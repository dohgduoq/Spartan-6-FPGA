`timescale 1ns / 1ps
module debouncer (
    input      clk,
    input      btn_n,

    output reg level,
    output reg pulse
);

    localparam [18:0] DEBOUNCE = 19'd499_999;
    reg sync0, sync1;
    reg [18:0] cnt;
    always @(posedge clk) begin

        sync0 <= ~btn_n;    // invert: 1 = pressed

        sync1 <= sync0;

    end
    always @(posedge clk) begin

        pulse <= 1'b0;

        if (sync1 == level) begin
            cnt <= 19'd0;

        end else begin

            if (cnt == DEBOUNCE) begin

                level <= sync1;

                cnt   <= 19'd0;

                if (sync1) pulse <= 1'b1;  

            end else

                cnt <= cnt + 1'b1;

        end

    end

endmodule