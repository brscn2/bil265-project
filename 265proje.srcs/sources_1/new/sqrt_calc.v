`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Tolga Izdas, Baris Can
// 
// Create Date: 08/01/2022 04:11:50 PM
// Design Name: 
// Module Name: sqrt_calc
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


module sqrt_calc(
        input [8:0] sayi,
        output reg [4:0] cikti_tam,
        output reg [6:0] cikti_ondalik
    );
    
    integer i;
    real ara_sonuc, ara_tahmin;
    
    // Newton Method: (N / A + A) / 2
    
    always @(*) begin
        ara_tahmin = 1;
        for (i = 1; i < 360; i = i + 1) begin
            ara_sonuc = (sayi / ara_tahmin + ara_tahmin) / 2;
            ara_tahmin = ara_sonuc;
        end
        cikti_tam = $floor(ara_sonuc);
        cikti_ondalik = $floor((ara_sonuc - cikti_tam) * 100);
        // $display("ara_sonuc: %f", ara_sonuc);
    end
    
    
endmodule
