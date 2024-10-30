
module segment_display(
input [3:0] in,
output reg [6:0] seg,
output [7:0] an);

always @(in) begin 
case(in)
4'b0000: seg = 7'b1111110;
4'b0001: seg = 7'b0110000;
4'b0010: seg = 7'b1101101;
4'b0011: seg = 7'b1111001;
4'b0100: seg = 7'b0110011;
4'b0101: seg = 7'b1011011;
4'b0110: seg = 7'b1011111;
4'b0111: seg = 7'b1110000;
4'b1000: seg = 7'b1111111;
4'b1001: seg = 7'b1111011;

endcase

end
endmodule

/*
module counter_7seg(
    input clk,
    input reset,
    input key1,
    output reg [6:0] seg,
    output reg [7:0] an
);

    reg [3:0] count = 0;
    reg key1_pressed_last = 0;

    always @(*) begin
        case (count)
            4'b0000: seg = 7'b1111110;
            4'b0001: seg = 7'b0110000;
            4'b0010: seg = 7'b1101101;
            4'b0011: seg = 7'b1111001;
            4'b0100: seg = 7'b0110011;
            4'b0101: seg = 7'b1011011;
            4'b0110: seg = 7'b1011111;
            4'b0111: seg = 7'b1110000;
            4'b1000: seg = 7'b1111111;
            4'b1001: seg = 7'b1111011;
            default: seg = 7'b0000000;
        endcase
    end

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            count <= 0;
        end else if (key1 && !key1_pressed_last) begin
            if (count == 9)
                count <= 0;
            else
                count <= count + 1;
        end
        key1_pressed_last <= key1;
    end

    always @(*) begin
        an = 8'b11111110;
    end

endmodule

*/
