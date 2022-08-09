`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Tolga Izdas
// 
// Create Date: 31.07.2022 22:35:19
// Design Name: 
// Module Name: prime_number_calc
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


module prime_number_calc(
        input [8:0] sayi,
        output reg [4:0] cikti
    );
    
    integer i;
    
    always @(*) begin
        cikti = 1;
        for (i = 2; i < sayi; i = i + 1) begin
            if (sayi % i == 0) begin
                cikti = 0;
            end
        end
        if (sayi == 1 || sayi == 0)
            cikti = 0;
    end
endmodule
