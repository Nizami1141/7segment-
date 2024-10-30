module segment_display(
input [3:0] in,
output reg [6:0] seg,
output [5:0] sel
);

assign sel = 6'b011111;

always @(in) begin 
case(in)
4'b0000: seg = 7'b0000001;
4'b0001: seg = 7'b1001111;
4'b0010: seg = 7'b0010010;
4'b0011: seg = 7'b0000110;
4'b0100: seg = 7'b1001100;
4'b0101: seg = 7'b0100100;
4'b0110: seg = 7'b0100000;
4'b0111: seg = 7'b0001111;
4'b1000: seg = 7'b0000000;
4'b1001: seg = 7'b0000100;

default: seg = 7'b1000000;

endcase

end
endmodule


/*
module segment_display(
    input clk,
    input rst,
    output reg [6:0] seg,
    output [5:0] sel
);
 reg [3:0] counter;
    reg [24:0] clk_div;  // Clock divider register
    reg slow_clk;        // Slow clock signal

    assign sel = 6'b011111; 

    always @(posedge clk or posedge rst) begin
        if (rst)
            counter <= 4'b0000;
        else if (counter == 4'b1001)
            counter <= 4'b0000;
        else
            counter <= counter + 1;
    end
    always @(posedge clk_div[24] or posedge rst) begin
        if (rst)
            counter <= 4'b0000;
        else if (counter == 4'b1001)
            counter <= 4'b0000;
        else
            counter <= counter + 1;
    end

    always @(counter) begin
        case (counter)
            4'b0000: seg = 7'b0000001;
            4'b0001: seg = 7'b1001111;
            4'b0010: seg = 7'b0010010;
            4'b0011: seg = 7'b0000110;
            4'b0100: seg = 7'b1001100;
            4'b0101: seg = 7'b0100100;
            4'b0110: seg = 7'b0100000;
            4'b0111: seg = 7'b0001111;
            4'b1000: seg = 7'b0000000;
            4'b1001: seg = 7'b0000100;
            default: seg = 7'b1111111;
        endcase
    end

endmodule

*/
