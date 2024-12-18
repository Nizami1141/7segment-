module counter(
    input clk,
    input rst,
    output reg [6:0] seg,
    output [5:0] sel
);

    reg [24:0] clk_div;
    reg [3:0] counter;

    assign sel = 6'b011111;

    always @(posedge clk or posedge rst) begin
        if (rst)
            clk_div <= 0;
        else
            clk_div <= clk_div + 1;
    end
	 
	 assign slow_clk = clk_div[24];

    always @(posedge clk_div[24] or posedge rst) begin
        if (rst)
            counter <= 4'b0000;
        else if (counter == 4'b1001)
            counter <= 4'b0000;
        else
            counter <= counter + 1;
    end

    always @(*) begin
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