`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/15/2020 10:50:16 AM
// Design Name: 
// Module Name: main
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module main(
    input clk_in,
    input enable,
    output led
    );
reg [25:0] count=0;
reg clk_out;

    always @(posedge clk_in)
    begin
        if (enable)
        begin
            count <= count + 1;
            if (count == 1_000_000)
            begin
                clk_out <= ~clk_out;
                count <= 0;
            end
        end
    end
    
    assign led = clk_out;
    
endmodule
