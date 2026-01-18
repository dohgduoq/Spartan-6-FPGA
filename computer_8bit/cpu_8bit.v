`timescale 1ns / 1ps


module cpu_8bit(
    input wire clk,
    input wire reset,
    output wire [7:0] out_reg
);

    // Dinh nghia opcodes
	 
    parameter OP_NOP = 4'b0000;
    parameter OP_LDA = 4'b0001;
    parameter OP_ADD = 4'b0010;
    parameter OP_SUB = 4'b0011;
    parameter OP_STA = 4'b0100;
    parameter OP_LDI = 4'b0101;
    parameter OP_JMP = 4'b0110;
    parameter OP_JC  = 4'b0111;
    parameter OP_JZ  = 4'b1000;
    parameter OP_OUT = 4'b1110;
    parameter OP_HLT = 4'b1111;

    // Dinh nghia flag 
    parameter FLAG_C = 0;
    parameter FLAG_Z = 1;

    // Thanh ghi noi bo
    reg [3:0] pc;              // Program Counter
    reg [2:0] stage;           // Instruction Stage Counter
    reg [7:0] ir;              // Instruction Register
    reg [7:0] mar;             // Memory Address Register
    reg [7:0] a_reg;           // A Register
    reg [7:0] b_reg;           // B Register
    reg [7:0] output_reg;      // Output Register
    reg [1:0] flags;           // Flags Register [C, Z]
    
    // Memory
    reg [7:0] mem [0:15];
    
    // Tin hieu control
    reg ctrl_ht;  // Halt
    reg ctrl_mi;  // Memory Address Register In
    reg ctrl_ri;  // RAM In
    reg ctrl_ro;  // RAM Out
    reg ctrl_io;  // Instruction Register Out
    reg ctrl_ii;  // Instruction Register In
    reg ctrl_ai;  // A Register In
    reg ctrl_ao;  // A Register Out
    reg ctrl_eo;  // Sum Out
    reg ctrl_su;  // Subtract
    reg ctrl_bi;  // B Register In
    reg ctrl_oi;  // Output Register In
    reg ctrl_ce;  // Counter Enable
    reg ctrl_co;  // Counter Out
    reg ctrl_jp;  // Jump
    reg ctrl_fi;  // Flags Register In
    
    // ALU 
    wire [7:0] b_reg_out;
    wire [8:0] alu;
    wire flag_z, flag_c;
    
    // Bus 
    wire [7:0] bus;

    // Khoi tao bo nho bang chuong trinh
    initial begin
        mem[0]  = {OP_OUT, 4'b0};
        mem[1]  = {OP_ADD, 4'hF};
        mem[2]  = {OP_JC,  4'h4};
        mem[3]  = {OP_JMP, 4'h0};
        mem[4]  = {OP_SUB, 4'hF};
        mem[5]  = {OP_OUT, 4'h0};
        mem[6]  = {OP_JZ,  4'h0};
        mem[7]  = {OP_JMP, 4'h4};
        mem[8]  = {OP_NOP, 4'h0};
        mem[9]  = {OP_NOP, 4'h0};
        mem[10] = {OP_NOP, 4'h0};
        mem[11] = {OP_NOP, 4'h0};
        mem[12] = {OP_NOP, 4'h0};
        mem[13] = {OP_NOP, 4'h0};
        mem[14] = {OP_NOP, 4'h0};
        mem[15] = 8'h01;  // DATA = 1
    end

    // Bus ghep kenh
    assign bus = ctrl_ro ? mem[mar[3:0]] :
                 ctrl_io ? {4'b0, ir[3:0]} :
                 ctrl_ao ? a_reg :
                 ctrl_eo ? alu[7:0] :
                 ctrl_co ? {4'b0, pc} :
                 8'b0;

    // ALU logic
    assign b_reg_out = ctrl_su ? (~b_reg + 1) : b_reg;
    assign alu = a_reg + b_reg_out;
    assign flag_z = (alu[7:0] == 0) ? 1 : 0;
    assign flag_c = alu[8];

    // Output assignment 
    assign out_reg = output_reg;

    // Chuong trinh dem
    always @(posedge clk or posedge reset) begin
        if (reset)
            pc <= 0;
        else if (ctrl_jp)
            pc <= bus[3:0];
        else if (ctrl_ce)
            pc <= pc + 1;
    end

    // Bo dem stage
    always @(posedge clk or posedge reset) begin
        if (reset)
            stage <= 0;
        else if (stage == 5 || ctrl_jp)
            stage <= 0;
        else if (ctrl_ht || stage == 6)
            stage <= 6;  // Halt state
        else
            stage <= stage + 1;
    end

    // Dia chi bo nho thanh ghi
    always @(posedge clk or posedge reset) begin
        if (reset)
            mar <= 0;
        else if (ctrl_mi)
            mar <= bus;
    end

    // RAM Write
    always @(posedge clk) begin
        if (ctrl_ri)
            mem[mar[3:0]] <= bus;
    end

    // Instruction Register
    always @(posedge clk or posedge reset) begin
        if (reset)
            ir <= 0;
        else if (ctrl_ii)
            ir <= bus;
    end

    // A Register
    always @(posedge clk or posedge reset) begin
        if (reset)
            a_reg <= 0;
        else if (ctrl_ai)
            a_reg <= bus;
    end

    // B Register
    always @(posedge clk or posedge reset) begin
        if (reset)
            b_reg <= 0;
        else if (ctrl_bi)
            b_reg <= bus;
    end

    // Flags Register
    always @(posedge clk or posedge reset) begin
        if (reset)
            flags <= 0;
        else if (ctrl_fi)
            flags <= {flag_z, flag_c};
    end

    // Output Register
    always @(posedge clk or posedge reset) begin
        if (reset)
            output_reg <= 0;
        else if (ctrl_oi)
            output_reg <= bus;
    end

    // Tao tin hieu control (on negative edge)
    // Halt
    always @(negedge clk) begin
        if (ir[7:4] == OP_HLT && stage == 2)
            ctrl_ht <= 1;
        else
            ctrl_ht <= 0;
    end

    // Dia chi thanh ghi In
    always @(negedge clk) begin
        if (stage == 0)
            ctrl_mi <= 1;
        else if (ir[7:4] == OP_LDA && stage == 2)
            ctrl_mi <= 1;
        else if (ir[7:4] == OP_ADD && stage == 2)
            ctrl_mi <= 1;
        else if (ir[7:4] == OP_SUB && stage == 2)
            ctrl_mi <= 1;
        else if (ir[7:4] == OP_STA && stage == 2)
            ctrl_mi <= 1;
        else
            ctrl_mi <= 0;
    end

    // RAM In
    always @(negedge clk) begin
        if (ir[7:4] == OP_STA && stage == 3)
            ctrl_ri <= 1;
        else
            ctrl_ri <= 0;
    end

    // RAM Out
    always @(negedge clk) begin
        if (stage == 1)
            ctrl_ro <= 1;
        else if (ir[7:4] == OP_LDA && stage == 3)
            ctrl_ro <= 1;
        else if (ir[7:4] == OP_ADD && stage == 3)
            ctrl_ro <= 1;
        else if (ir[7:4] == OP_SUB && stage == 3)
            ctrl_ro <= 1;
        else
            ctrl_ro <= 0;
    end

    // Thanh ghi ra Out
    always @(negedge clk) begin
        if (ir[7:4] == OP_LDA && stage == 2)
            ctrl_io <= 1;
        else if (ir[7:4] == OP_LDI && stage == 2)
            ctrl_io <= 1;
        else if (ir[7:4] == OP_ADD && stage == 2)
            ctrl_io <= 1;
        else if (ir[7:4] == OP_SUB && stage == 2)
            ctrl_io <= 1;
        else if (ir[7:4] == OP_STA && stage == 2)
            ctrl_io <= 1;
        else if (ir[7:4] == OP_JMP && stage == 2)
            ctrl_io <= 1;
        else if (ir[7:4] == OP_JC && stage == 2)
            ctrl_io <= 1;
        else if (ir[7:4] == OP_JZ && stage == 2)
            ctrl_io <= 1;
        else
            ctrl_io <= 0;
    end

    // Register In
    always @(negedge clk) begin
        if (stage == 1)
            ctrl_ii <= 1;
        else
            ctrl_ii <= 0;
    end

    // A Register In
    always @(negedge clk) begin
        if (ir[7:4] == OP_LDI && stage == 2)
            ctrl_ai <= 1;
        else if (ir[7:4] == OP_LDA && stage == 3)
            ctrl_ai <= 1;
        else if (ir[7:4] == OP_ADD && stage == 4)
            ctrl_ai <= 1;
        else if (ir[7:4] == OP_SUB && stage == 4)
            ctrl_ai <= 1;
        else
            ctrl_ai <= 0;
    end

    // A Register Out
    always @(negedge clk) begin
        if (ir[7:4] == OP_STA && stage == 3)
            ctrl_ao <= 1;
        else if (ir[7:4] == OP_OUT && stage == 2)
            ctrl_ao <= 1;
        else
            ctrl_ao <= 0;
    end

    // Cong
    always @(negedge clk) begin
        if (ir[7:4] == OP_ADD && stage == 4)
            ctrl_eo <= 1;
        else if (ir[7:4] == OP_SUB && stage == 4)
            ctrl_eo <= 1;
        else
            ctrl_eo <= 0;
    end

    // Tru
    always @(negedge clk) begin
        if (ir[7:4] == OP_SUB && stage == 4)
            ctrl_su <= 1;
        else
            ctrl_su <= 0;
    end

    // B Register In
    always @(negedge clk) begin
        if (ir[7:4] == OP_ADD && stage == 3)
            ctrl_bi <= 1;
        else if (ir[7:4] == OP_SUB && stage == 3)
            ctrl_bi <= 1;
        else
            ctrl_bi <= 0;
    end

    // Output Register In
    always @(negedge clk) begin
        if (ir[7:4] == OP_OUT && stage == 2)
            ctrl_oi <= 1;
        else
            ctrl_oi <= 0;
    end

    // Kich hoat Counter
    always @(negedge clk) begin
        if (stage == 1)
            ctrl_ce <= 1;
        else
            ctrl_ce <= 0;
    end

    // Counter Out
    always @(negedge clk) begin
        if (stage == 0)
            ctrl_co <= 1;
        else
            ctrl_co <= 0;
    end

    // Jump
    always @(negedge clk) begin
        if (ir[7:4] == OP_JMP && stage == 2)
            ctrl_jp <= 1;
        else if (ir[7:4] == OP_JC && stage == 2 && flags[FLAG_C] == 1)
            ctrl_jp <= 1;
        else if (ir[7:4] == OP_JZ && stage == 2 && flags[FLAG_Z] == 1)
            ctrl_jp <= 1;
        else
            ctrl_jp <= 0;
    end

    // Flags Register In
    always @(negedge clk) begin
        if (ir[7:4] == OP_ADD && stage == 4)
            ctrl_fi <= 1;
        else if (ir[7:4] == OP_SUB && stage == 4)
            ctrl_fi <= 1;
        else
            ctrl_fi <= 0;
    end

endmodule
