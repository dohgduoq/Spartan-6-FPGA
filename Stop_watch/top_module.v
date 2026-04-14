`timescale 1ns / 1ps
module top_module(

    input   clk,
    input   rst_n,
    input   start_n,
	input 	stop_n,		
    input   lap_n,  

    output  buzzer,  
    output [7:0] seg,
    output [5:0] dig

);

wire rst_lv;
wire start_pulse;
wire stop_pulse;
wire lap_pulse;

debouncer db_rst (.clk(clk), .btn_n(rst_n), .level(rst_lv),  .pulse());
debouncer db_start (.clk(clk), .btn_n(start_n),  .level(),   .pulse(start_pulse));
debouncer db_stop (.clk(clk), .btn_n(stop_n), .level(), .pulse(stop_pulse));
debouncer db_lap (.clk(clk), .btn_n(lap_n), .level(),  .pulse(lap_pulse));
wire rst = rst_lv;

reg [18:0] cs_div;
reg        cs_tick;

always @(posedge clk) begin

    cs_tick <= 1'b0;

    if (rst)

        cs_div <= 19'd0;

    else if (cs_div == 19'd499_999) begin

        cs_div  <= 19'd0;

        cs_tick <= 1'b1;

    end else

        cs_div <= cs_div + 1'b1;

end

reg [14:0] sc_div;

reg        sc_tick;



always @(posedge clk) begin

    sc_tick <= 1'b0;

    if (rst)

        sc_div <= 15'd0;

    else if (sc_div == 15'd24_999) begin

        sc_div  <= 15'd0;

        sc_tick <= 1'b1;

    end else

        sc_div <= sc_div + 1'b1;

end

reg [13:0] bz_div;
reg        bz_tone;

always @(posedge clk) begin

    if (bz_div == 14'd12_499) begin

        bz_div  <= 14'd0;

        bz_tone <= ~bz_tone;

    end else

        bz_div <= bz_div + 1'b1;
end


reg [5:0] bl_cnt;
reg       bl_phase;



always @(posedge clk) begin

    if (rst) begin

        bl_cnt   <= 6'd0;

        bl_phase <= 1'b0;

    end else if (cs_tick) begin

        if (bl_cnt == 6'd49) begin

            bl_cnt   <= 6'd0;

            bl_phase <= ~bl_phase;

        end else

            bl_cnt <= bl_cnt + 1'b1;

    end

end

reg running;

always @(posedge clk) begin

    if (rst)

        running <= 1'b0;

    else if (start_pulse)

        running <= 1'b1;
	 else if (stop_pulse)
		  running <= 1'b0;

end

reg       bz_en;

reg [3:0] bz_cnt;


always @(posedge clk) begin

    if (rst) begin

        bz_en  <= 1'b0;

        bz_cnt <= 4'd0;

    end else if (start_pulse || stop_pulse) begin

        bz_en  <= 1'b1;

        bz_cnt <= 4'd0;

    end else if (cs_tick && bz_en) begin

        if (bz_cnt == 4'd9) begin

            bz_en  <= 1'b0;

            bz_cnt <= 4'd0;

        end else

            bz_cnt <= bz_cnt + 1'b1;

    end

end

assign buzzer = bz_en & bz_tone;

reg [3:0] cs0, cs1;
reg [3:0]  s0,  s1;
reg [3:0]  m0,  m1;

always @(posedge clk) begin

    if (rst) begin

        cs0<=4'd0; cs1<=4'd0;

        s0 <=4'd0; s1 <=4'd0;

        m0 <=4'd0; m1 <=4'd0;

    end else if (running && cs_tick) begin

        if (cs0==4'd9) begin cs0<=4'd0;

            if (cs1==4'd9) begin cs1<=4'd0;

                if (s0==4'd9) begin s0<=4'd0;

                    if (s1==4'd5) begin s1<=4'd0;

                        if (m0==4'd9) begin m0<=4'd0;

                            if (m1==4'd5) m1<=4'd0;

                            else          m1<=m1+1'b1;

                        end else m0<=m0+1'b1;

                    end else s1<=s1+1'b1;

                end else s0<=s0+1'b1;

            end else cs1<=cs1+1'b1;

        end else cs0<=cs0+1'b1;

    end

end

localparam S_RUN  = 2'd0,

           S_LAP  = 2'd1,

           S_BEST = 2'd2;

reg [1:0] state;
reg [3:0] lcs0, lcs1, ls0, ls1, lm0, lm1;
reg [3:0] bcs0, bcs1, bs0, bs1, bm0, bm1;
reg       best_valid;
reg [7:0] lap_tmr;  
wire [23:0] cur_bcd  = {m1,  m0,  s1,  s0,  cs1,  cs0 };

wire [23:0] best_bcd = {bm1, bm0, bs1, bs0, bcs1, bcs0};

wire        new_best = (!best_valid) || (cur_bcd < best_bcd);

always @(posedge clk) begin

    if (rst) begin

        state      <= S_RUN;

        best_valid <= 1'b0;

        lap_tmr    <= 8'd0;

    end else case (state)

        S_RUN: begin

            if (lap_pulse && running) begin

                {lm1,lm0,ls1,ls0,lcs1,lcs0} <= cur_bcd;   // save lap

                if (new_best)

                    {bm1,bm0,bs1,bs0,bcs1,bcs0} <= cur_bcd; // update best

                best_valid <= 1'b1;

                state      <= S_LAP;

                lap_tmr    <= 8'd0;

            end

        end

        S_LAP: begin

            if (lap_pulse) begin

                state   <= S_BEST;

                lap_tmr <= 8'd0;

            end else if (cs_tick) begin

                if (lap_tmr == 8'd199) begin

                    state   <= S_RUN;

                    lap_tmr <= 8'd0;

                end else

                    lap_tmr <= lap_tmr + 1'b1;

            end

        end

        S_BEST: begin

            if (lap_pulse || start_pulse || stop_pulse) 

                state <= S_RUN;

        end

        default: state <= S_RUN;

    endcase

end

reg [3:0] d5, d4, d3, d2, d1, d0;

always @(*) begin

    case (state)

        S_LAP:

            {d5,d4,d3,d2,d1,d0} = {lm1,lm0,ls1,ls0,lcs1,lcs0};

        S_BEST:

            {d5,d4,d3,d2,d1,d0} = best_valid
                                 ? {bm1,bm0,bs1,bs0,bcs1,bcs0}
                                 : 24'd0;
        default:            // S_RUN

            {d5,d4,d3,d2,d1,d0} = cur_bcd;

    endcase

end
function [6:0] seg7;

    input [3:0] b;

    case (b)

        4'd0: seg7 = 7'b1000000;   // 0

        4'd1: seg7 = 7'b1111001;   // 1

        4'd2: seg7 = 7'b0100100;   // 2

        4'd3: seg7 = 7'b0110000;   // 3

        4'd4: seg7 = 7'b0011001;   // 4

        4'd5: seg7 = 7'b0010010;   // 5

        4'd6: seg7 = 7'b0000010;   // 6

        4'd7: seg7 = 7'b1111000;   // 7

        4'd8: seg7 = 7'b0000000;   // 8

        4'd9: seg7 = 7'b0010000;   // 9

        default: seg7 = 7'b1111111; // blank

    endcase

endfunction

reg [2:0] sc_pos;


always @(posedge clk) begin

    if (rst)

        sc_pos <= 3'd0;

    else if (sc_tick)

        sc_pos <= (sc_pos == 3'd5) ? 3'd0 : sc_pos + 1'b1;

end

wire blank = (state == S_BEST) && bl_phase;

reg [7:0] seg_r;
reg [5:0] dig_r;

always @(posedge clk) begin

    if (rst) begin

        seg_r <= 8'hFF;

        dig_r <= 6'h3F;   // all digits off

    end else if (sc_tick) begin

        if (blank) begin

            seg_r <= 8'hFF;   // all segments off

            dig_r <= 6'h3F;   // all anodes off (no current)

        end else begin

            case (sc_pos)

                // pos 5 – MM-tens  – no DP

                3'd5: begin dig_r <= 6'b011111; seg_r <= {1'b1, seg7(d5)}; end

                // pos 4 – MM-ones  – DP ON  (MM . SS separator)

                3'd4: begin dig_r <= 6'b101111; seg_r <= {1'b0, seg7(d4)}; end

                // pos 3 – SS-tens  – no DP

                3'd3: begin dig_r <= 6'b110111; seg_r <= {1'b1, seg7(d3)}; end

                // pos 2 – SS-ones  – DP ON  (SS . cs separator)

                3'd2: begin dig_r <= 6'b111011; seg_r <= {1'b0, seg7(d2)}; end

                // pos 1 – cs-tens  – no DP

                3'd1: begin dig_r <= 6'b111101; seg_r <= {1'b1, seg7(d1)}; end

                // pos 0 – cs-ones  – no DP  (rightmost)

                3'd0: begin dig_r <= 6'b111110; seg_r <= {1'b1, seg7(d0)}; end

                default: begin dig_r <= 6'h3F; seg_r <= 8'hFF; end

            endcase

        end

    end

end
assign seg = seg_r;
assign dig = dig_r;
endmodule

