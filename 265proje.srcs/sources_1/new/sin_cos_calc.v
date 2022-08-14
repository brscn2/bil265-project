`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: TOBB University of Economics and Technology
// Engineer: Tolga Izdas, Kerem Karabacak, Baris Can
// 
// Create Date: 30.07.2022 15:37:28
// Design Name: Sin-Cos Calculator
// Module Name: sin_cos_calc
// Project Name: BIL 265 Project
// Target Devices: FPGA
// Tool Versions: 
// Description: This module calculates sin and cos value of an input.
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module sin_cos_calc(
        input [8:0] sayi,
        input islem, // 1 -> sin, 0 -> cos
        output reg sonuc_isareti, // 1 -> negatif, 0 -> pozitif
        output reg [4:0] sonuc_tam,
        output reg [3:0] sonuc_ondalik1, sonuc_ondalik2
    );
    
    // sin(x) = x - x**3/3! + x**5/5! - x**7/7! + x**9/9!
    // cos(x) = 1 - x**2/2! + x**4/4! - x**6/6! + x**8/8!
    
    always @(*) begin
     if (sayi == 0) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 0;
            sonuc_ondalik2 = 0;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 1;
            sonuc_ondalik1 = 0;
            sonuc_ondalik2 = 0;
        end
    end
    if (sayi == 1) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 0;
            sonuc_ondalik2 = 1;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 9;
        end
    end
    if (sayi == 2) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 0;
            sonuc_ondalik2 = 3;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 9;
        end
    end
    if (sayi == 3) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 0;
            sonuc_ondalik2 = 5;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 9;
        end
    end
    if (sayi == 4) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 0;
            sonuc_ondalik2 = 6;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 9;
        end
    end
    if (sayi == 5) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 0;
            sonuc_ondalik2 = 8;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 9;
        end
    end
    if (sayi == 6) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 1;
            sonuc_ondalik2 = 0;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 9;
        end
    end
    if (sayi == 7) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 1;
            sonuc_ondalik2 = 2;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 9;
        end
    end
    if (sayi == 8) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 1;
            sonuc_ondalik2 = 3;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 9;
        end
    end
    if (sayi == 9) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 1;
            sonuc_ondalik2 = 5;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 8;
        end
    end
    if (sayi == 10) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 1;
            sonuc_ondalik2 = 7;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 8;
        end
    end
    if (sayi == 11) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 1;
            sonuc_ondalik2 = 9;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 8;
        end
    end
    if (sayi == 12) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 2;
            sonuc_ondalik2 = 0;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 7;
        end
    end
    if (sayi == 13) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 2;
            sonuc_ondalik2 = 2;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 7;
        end
    end
    if (sayi == 14) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 2;
            sonuc_ondalik2 = 4;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 7;
        end
    end
    if (sayi == 15) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 2;
            sonuc_ondalik2 = 5;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 6;
        end
    end
    if (sayi == 16) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 2;
            sonuc_ondalik2 = 7;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 6;
        end
    end
    if (sayi == 17) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 2;
            sonuc_ondalik2 = 9;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 5;
        end
    end
    if (sayi == 18) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 3;
            sonuc_ondalik2 = 0;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 5;
        end
    end
    if (sayi == 19) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 3;
            sonuc_ondalik2 = 2;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 4;
        end
    end
    if (sayi == 20) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 3;
            sonuc_ondalik2 = 4;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 3;
        end
    end
    if (sayi == 21) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 3;
            sonuc_ondalik2 = 5;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 3;
        end
    end
    if (sayi == 22) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 3;
            sonuc_ondalik2 = 7;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 2;
        end
    end
    if (sayi == 23) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 3;
            sonuc_ondalik2 = 9;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 2;
        end
    end
    if (sayi == 24) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 4;
            sonuc_ondalik2 = 0;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 1;
        end
    end
    if (sayi == 25) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 4;
            sonuc_ondalik2 = 2;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 0;
        end
    end
    if (sayi == 26) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 4;
            sonuc_ondalik2 = 3;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 8;
            sonuc_ondalik2 = 9;
        end
    end
    if (sayi == 27) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 4;
            sonuc_ondalik2 = 5;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 8;
            sonuc_ondalik2 = 9;
        end
    end
    if (sayi == 28) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 4;
            sonuc_ondalik2 = 6;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 8;
            sonuc_ondalik2 = 8;
        end
    end
    if (sayi == 29) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 4;
            sonuc_ondalik2 = 8;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 8;
            sonuc_ondalik2 = 7;
        end
    end
    if (sayi == 30) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 5;
            sonuc_ondalik2 = 0;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 8;
            sonuc_ondalik2 = 6;
        end
    end
    if (sayi == 31) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 5;
            sonuc_ondalik2 = 1;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 8;
            sonuc_ondalik2 = 5;
        end
    end
    if (sayi == 32) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 5;
            sonuc_ondalik2 = 2;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 8;
            sonuc_ondalik2 = 4;
        end
    end
    if (sayi == 33) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 5;
            sonuc_ondalik2 = 4;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 8;
            sonuc_ondalik2 = 3;
        end
    end
    if (sayi == 34) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 5;
            sonuc_ondalik2 = 5;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 8;
            sonuc_ondalik2 = 2;
        end
    end
    if (sayi == 35) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 5;
            sonuc_ondalik2 = 7;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 8;
            sonuc_ondalik2 = 1;
        end
    end
    if (sayi == 36) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 5;
            sonuc_ondalik2 = 8;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 8;
            sonuc_ondalik2 = 0;
        end
    end
    if (sayi == 37) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 6;
            sonuc_ondalik2 = 0;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 7;
            sonuc_ondalik2 = 9;
        end
    end
    if (sayi == 38) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 6;
            sonuc_ondalik2 = 1;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 7;
            sonuc_ondalik2 = 8;
        end
    end
    if (sayi == 39) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 6;
            sonuc_ondalik2 = 2;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 7;
            sonuc_ondalik2 = 7;
        end
    end
    if (sayi == 40) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 6;
            sonuc_ondalik2 = 4;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 7;
            sonuc_ondalik2 = 6;
        end
    end
    if (sayi == 41) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 6;
            sonuc_ondalik2 = 5;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 7;
            sonuc_ondalik2 = 5;
        end
    end
    if (sayi == 42) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 6;
            sonuc_ondalik2 = 6;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 7;
            sonuc_ondalik2 = 4;
        end
    end
    if (sayi == 43) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 6;
            sonuc_ondalik2 = 8;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 7;
            sonuc_ondalik2 = 3;
        end
    end
    if (sayi == 44) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 6;
            sonuc_ondalik2 = 9;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 7;
            sonuc_ondalik2 = 1;
        end
    end
    if (sayi == 45) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 7;
            sonuc_ondalik2 = 0;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 7;
            sonuc_ondalik2 = 0;
        end
    end
    if (sayi == 46) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 7;
            sonuc_ondalik2 = 1;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 6;
            sonuc_ondalik2 = 9;
        end
    end
    if (sayi == 47) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 7;
            sonuc_ondalik2 = 3;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 6;
            sonuc_ondalik2 = 8;
        end
    end
    if (sayi == 48) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 7;
            sonuc_ondalik2 = 4;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 6;
            sonuc_ondalik2 = 6;
        end
    end
    if (sayi == 49) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 7;
            sonuc_ondalik2 = 5;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 6;
            sonuc_ondalik2 = 5;
        end
    end
    if (sayi == 50) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 7;
            sonuc_ondalik2 = 6;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 6;
            sonuc_ondalik2 = 4;
        end
    end
    if (sayi == 51) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 7;
            sonuc_ondalik2 = 7;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 6;
            sonuc_ondalik2 = 2;
        end
    end
    if (sayi == 52) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 7;
            sonuc_ondalik2 = 8;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 6;
            sonuc_ondalik2 = 1;
        end
    end
    if (sayi == 53) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 7;
            sonuc_ondalik2 = 9;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 6;
            sonuc_ondalik2 = 0;
        end
    end
    if (sayi == 54) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 8;
            sonuc_ondalik2 = 0;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 5;
            sonuc_ondalik2 = 8;
        end
    end
    if (sayi == 55) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 8;
            sonuc_ondalik2 = 1;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 5;
            sonuc_ondalik2 = 7;
        end
    end
    if (sayi == 56) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 8;
            sonuc_ondalik2 = 2;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 5;
            sonuc_ondalik2 = 5;
        end
    end
    if (sayi == 57) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 8;
            sonuc_ondalik2 = 3;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 5;
            sonuc_ondalik2 = 4;
        end
    end
    if (sayi == 58) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 8;
            sonuc_ondalik2 = 4;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 5;
            sonuc_ondalik2 = 2;
        end
    end
    if (sayi == 59) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 8;
            sonuc_ondalik2 = 5;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 5;
            sonuc_ondalik2 = 1;
        end
    end
    if (sayi == 60) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 8;
            sonuc_ondalik2 = 6;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 5;
            sonuc_ondalik2 = 0;
        end
    end
    if (sayi == 61) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 8;
            sonuc_ondalik2 = 7;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 4;
            sonuc_ondalik2 = 8;
        end
    end
    if (sayi == 62) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 8;
            sonuc_ondalik2 = 8;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 4;
            sonuc_ondalik2 = 6;
        end
    end
    if (sayi == 63) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 8;
            sonuc_ondalik2 = 9;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 4;
            sonuc_ondalik2 = 5;
        end
    end
    if (sayi == 64) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 8;
            sonuc_ondalik2 = 9;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 4;
            sonuc_ondalik2 = 3;
        end
    end
    if (sayi == 65) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 0;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 4;
            sonuc_ondalik2 = 2;
        end
    end
    if (sayi == 66) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 1;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 4;
            sonuc_ondalik2 = 0;
        end
    end
    if (sayi == 67) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 2;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 3;
            sonuc_ondalik2 = 9;
        end
    end
    if (sayi == 68) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 2;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 3;
            sonuc_ondalik2 = 7;
        end
    end
    if (sayi == 69) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 3;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 3;
            sonuc_ondalik2 = 5;
        end
    end
    if (sayi == 70) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 3;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 3;
            sonuc_ondalik2 = 4;
        end
    end
    if (sayi == 71) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 4;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 3;
            sonuc_ondalik2 = 2;
        end
    end
    if (sayi == 72) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 5;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 3;
            sonuc_ondalik2 = 0;
        end
    end
    if (sayi == 73) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 5;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 2;
            sonuc_ondalik2 = 9;
        end
    end
    if (sayi == 74) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 6;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 2;
            sonuc_ondalik2 = 7;
        end
    end
    if (sayi == 75) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 6;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 2;
            sonuc_ondalik2 = 5;
        end
    end
    if (sayi == 76) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 7;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 2;
            sonuc_ondalik2 = 4;
        end
    end
    if (sayi == 77) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 7;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 2;
            sonuc_ondalik2 = 2;
        end
    end
    if (sayi == 78) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 7;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 2;
            sonuc_ondalik2 = 0;
        end
    end
    if (sayi == 79) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 8;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 1;
            sonuc_ondalik2 = 9;
        end
    end
    if (sayi == 80) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 8;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 1;
            sonuc_ondalik2 = 7;
        end
    end
    if (sayi == 81) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 8;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 1;
            sonuc_ondalik2 = 5;
        end
    end
    if (sayi == 82) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 9;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 1;
            sonuc_ondalik2 = 3;
        end
    end
    if (sayi == 83) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 9;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 1;
            sonuc_ondalik2 = 2;
        end
    end
    if (sayi == 84) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 9;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 1;
            sonuc_ondalik2 = 0;
        end
    end
    if (sayi == 85) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 9;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 0;
            sonuc_ondalik2 = 8;
        end
    end
    if (sayi == 86) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 9;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 0;
            sonuc_ondalik2 = 6;
        end
    end
    if (sayi == 87) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 9;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 0;
            sonuc_ondalik2 = 5;
        end
    end
    if (sayi == 88) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 9;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 0;
            sonuc_ondalik2 = 3;
        end
    end
    if (sayi == 89) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 9;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 0;
            sonuc_ondalik2 = 1;
        end
    end
    if (sayi == 90) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 1;
            sonuc_ondalik1 = 0;
            sonuc_ondalik2 = 0;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 0;
            sonuc_ondalik2 = 0;
        end
    end
    if (sayi == 91) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 9;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 0;
            sonuc_ondalik2 = 1;
        end
    end
    if (sayi == 92) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 9;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 0;
            sonuc_ondalik2 = 3;
        end
    end
    if (sayi == 93) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 9;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 0;
            sonuc_ondalik2 = 5;
        end
    end
    if (sayi == 94) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 9;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 0;
            sonuc_ondalik2 = 6;
        end
    end
    if (sayi == 95) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 9;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 0;
            sonuc_ondalik2 = 8;
        end
    end
    if (sayi == 96) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 9;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 1;
            sonuc_ondalik2 = 0;
        end
    end
    if (sayi == 97) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 9;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 1;
            sonuc_ondalik2 = 2;
        end
    end
    if (sayi == 98) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 9;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 1;
            sonuc_ondalik2 = 3;
        end
    end
    if (sayi == 99) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 8;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 1;
            sonuc_ondalik2 = 5;
        end
    end
    if (sayi == 100) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 8;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 1;
            sonuc_ondalik2 = 7;
        end
    end
    if (sayi == 101) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 8;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 1;
            sonuc_ondalik2 = 9;
        end
    end
    if (sayi == 102) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 7;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 2;
            sonuc_ondalik2 = 0;
        end
    end
    if (sayi == 103) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 7;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 2;
            sonuc_ondalik2 = 2;
        end
    end
    if (sayi == 104) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 7;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 2;
            sonuc_ondalik2 = 4;
        end
    end
    if (sayi == 105) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 6;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 2;
            sonuc_ondalik2 = 5;
        end
    end
    if (sayi == 106) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 6;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 2;
            sonuc_ondalik2 = 7;
        end
    end
    if (sayi == 107) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 5;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 2;
            sonuc_ondalik2 = 9;
        end
    end
    if (sayi == 108) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 5;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 3;
            sonuc_ondalik2 = 0;
        end
    end
    if (sayi == 109) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 4;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 3;
            sonuc_ondalik2 = 2;
        end
    end
    if (sayi == 110) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 3;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 3;
            sonuc_ondalik2 = 4;
        end
    end
    if (sayi == 111) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 3;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 3;
            sonuc_ondalik2 = 5;
        end
    end
    if (sayi == 112) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 2;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 3;
            sonuc_ondalik2 = 7;
        end
    end
    if (sayi == 113) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 2;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 3;
            sonuc_ondalik2 = 9;
        end
    end
    if (sayi == 114) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 1;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 4;
            sonuc_ondalik2 = 0;
        end
    end
    if (sayi == 115) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 0;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 4;
            sonuc_ondalik2 = 2;
        end
    end
    if (sayi == 116) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 8;
            sonuc_ondalik2 = 9;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 4;
            sonuc_ondalik2 = 3;
        end
    end
    if (sayi == 117) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 8;
            sonuc_ondalik2 = 9;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 4;
            sonuc_ondalik2 = 5;
        end
    end
    if (sayi == 118) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 8;
            sonuc_ondalik2 = 8;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 4;
            sonuc_ondalik2 = 6;
        end
    end
    if (sayi == 119) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 8;
            sonuc_ondalik2 = 7;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 4;
            sonuc_ondalik2 = 8;
        end
    end
    if (sayi == 120) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 8;
            sonuc_ondalik2 = 6;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 5;
            sonuc_ondalik2 = 0;
        end
    end
    if (sayi == 121) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 8;
            sonuc_ondalik2 = 5;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 5;
            sonuc_ondalik2 = 1;
        end
    end
    if (sayi == 122) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 8;
            sonuc_ondalik2 = 4;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 5;
            sonuc_ondalik2 = 2;
        end
    end
    if (sayi == 123) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 8;
            sonuc_ondalik2 = 3;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 5;
            sonuc_ondalik2 = 4;
        end
    end
    if (sayi == 124) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 8;
            sonuc_ondalik2 = 2;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 5;
            sonuc_ondalik2 = 5;
        end
    end
    if (sayi == 125) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 8;
            sonuc_ondalik2 = 1;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 5;
            sonuc_ondalik2 = 7;
        end
    end
    if (sayi == 126) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 8;
            sonuc_ondalik2 = 0;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 5;
            sonuc_ondalik2 = 8;
        end
    end
    if (sayi == 127) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 7;
            sonuc_ondalik2 = 9;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 6;
            sonuc_ondalik2 = 0;
        end
    end
    if (sayi == 128) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 7;
            sonuc_ondalik2 = 8;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 6;
            sonuc_ondalik2 = 1;
        end
    end
    if (sayi == 129) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 7;
            sonuc_ondalik2 = 7;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 6;
            sonuc_ondalik2 = 2;
        end
    end
    if (sayi == 130) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 7;
            sonuc_ondalik2 = 6;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 6;
            sonuc_ondalik2 = 4;
        end
    end
    if (sayi == 131) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 7;
            sonuc_ondalik2 = 5;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 6;
            sonuc_ondalik2 = 5;
        end
    end
    if (sayi == 132) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 7;
            sonuc_ondalik2 = 4;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 6;
            sonuc_ondalik2 = 6;
        end
    end
    if (sayi == 133) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 7;
            sonuc_ondalik2 = 3;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 6;
            sonuc_ondalik2 = 8;
        end
    end
    if (sayi == 134) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 7;
            sonuc_ondalik2 = 1;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 6;
            sonuc_ondalik2 = 9;
        end
    end
    if (sayi == 135) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 7;
            sonuc_ondalik2 = 0;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 7;
            sonuc_ondalik2 = 0;
        end
    end
    if (sayi == 136) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 6;
            sonuc_ondalik2 = 9;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 7;
            sonuc_ondalik2 = 1;
        end
    end
    if (sayi == 137) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 6;
            sonuc_ondalik2 = 8;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 7;
            sonuc_ondalik2 = 3;
        end
    end
    if (sayi == 138) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 6;
            sonuc_ondalik2 = 6;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 7;
            sonuc_ondalik2 = 4;
        end
    end
    if (sayi == 139) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 6;
            sonuc_ondalik2 = 5;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 7;
            sonuc_ondalik2 = 5;
        end
    end
    if (sayi == 140) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 6;
            sonuc_ondalik2 = 4;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 7;
            sonuc_ondalik2 = 6;
        end
    end
    if (sayi == 141) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 6;
            sonuc_ondalik2 = 2;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 7;
            sonuc_ondalik2 = 7;
        end
    end
    if (sayi == 142) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 6;
            sonuc_ondalik2 = 1;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 7;
            sonuc_ondalik2 = 8;
        end
    end
    if (sayi == 143) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 6;
            sonuc_ondalik2 = 0;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 7;
            sonuc_ondalik2 = 9;
        end
    end
    if (sayi == 144) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 5;
            sonuc_ondalik2 = 8;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 8;
            sonuc_ondalik2 = 0;
        end
    end
    if (sayi == 145) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 5;
            sonuc_ondalik2 = 7;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 8;
            sonuc_ondalik2 = 1;
        end
    end
    if (sayi == 146) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 5;
            sonuc_ondalik2 = 5;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 8;
            sonuc_ondalik2 = 2;
        end
    end
    if (sayi == 147) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 5;
            sonuc_ondalik2 = 4;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 8;
            sonuc_ondalik2 = 3;
        end
    end
    if (sayi == 148) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 5;
            sonuc_ondalik2 = 2;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 8;
            sonuc_ondalik2 = 4;
        end
    end
    if (sayi == 149) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 5;
            sonuc_ondalik2 = 1;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 8;
            sonuc_ondalik2 = 5;
        end
    end
    if (sayi == 150) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 4;
            sonuc_ondalik2 = 9;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 8;
            sonuc_ondalik2 = 6;
        end
    end
    if (sayi == 151) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 4;
            sonuc_ondalik2 = 8;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 8;
            sonuc_ondalik2 = 7;
        end
    end
    if (sayi == 152) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 4;
            sonuc_ondalik2 = 6;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 8;
            sonuc_ondalik2 = 8;
        end
    end
    if (sayi == 153) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 4;
            sonuc_ondalik2 = 5;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 8;
            sonuc_ondalik2 = 9;
        end
    end
    if (sayi == 154) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 4;
            sonuc_ondalik2 = 3;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 8;
            sonuc_ondalik2 = 9;
        end
    end
    if (sayi == 155) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 4;
            sonuc_ondalik2 = 2;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 0;
        end
    end
    if (sayi == 156) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 4;
            sonuc_ondalik2 = 0;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 1;
        end
    end
    if (sayi == 157) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 3;
            sonuc_ondalik2 = 9;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 2;
        end
    end
    if (sayi == 158) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 3;
            sonuc_ondalik2 = 7;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 2;
        end
    end
    if (sayi == 159) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 3;
            sonuc_ondalik2 = 5;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 3;
        end
    end
    if (sayi == 160) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 3;
            sonuc_ondalik2 = 4;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 3;
        end
    end
    if (sayi == 161) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 3;
            sonuc_ondalik2 = 2;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 4;
        end
    end
    if (sayi == 162) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 3;
            sonuc_ondalik2 = 0;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 5;
        end
    end
    if (sayi == 163) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 2;
            sonuc_ondalik2 = 9;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 5;
        end
    end
    if (sayi == 164) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 2;
            sonuc_ondalik2 = 7;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 6;
        end
    end
    if (sayi == 165) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 2;
            sonuc_ondalik2 = 5;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 6;
        end
    end
    if (sayi == 166) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 2;
            sonuc_ondalik2 = 4;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 7;
        end
    end
    if (sayi == 167) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 2;
            sonuc_ondalik2 = 2;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 7;
        end
    end
    if (sayi == 168) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 2;
            sonuc_ondalik2 = 0;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 7;
        end
    end
    if (sayi == 169) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 1;
            sonuc_ondalik2 = 9;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 8;
        end
    end
    if (sayi == 170) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 1;
            sonuc_ondalik2 = 7;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 8;
        end
    end
    if (sayi == 171) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 1;
            sonuc_ondalik2 = 5;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 8;
        end
    end
    if (sayi == 172) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 1;
            sonuc_ondalik2 = 3;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 9;
        end
    end
    if (sayi == 173) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 1;
            sonuc_ondalik2 = 2;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 9;
        end
    end
    if (sayi == 174) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 1;
            sonuc_ondalik2 = 0;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 9;
        end
    end
    if (sayi == 175) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 0;
            sonuc_ondalik2 = 8;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 9;
        end
    end
    if (sayi == 176) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 0;
            sonuc_ondalik2 = 6;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 9;
        end
    end
    if (sayi == 177) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 0;
            sonuc_ondalik2 = 5;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 9;
        end
    end
    if (sayi == 178) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 0;
            sonuc_ondalik2 = 3;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 9;
        end
    end
    if (sayi == 179) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 0;
            sonuc_ondalik2 = 1;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 9;
        end
    end
    if (sayi == 180) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 0;
            sonuc_ondalik2 = 0;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 1;
            sonuc_ondalik1 = 0;
            sonuc_ondalik2 = 0;
        end
    end
    if (sayi == 181) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 0;
            sonuc_ondalik2 = 1;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 9;
        end
    end
    if (sayi == 182) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 0;
            sonuc_ondalik2 = 3;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 9;
        end
    end
    if (sayi == 183) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 0;
            sonuc_ondalik2 = 5;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 9;
        end
    end
    if (sayi == 184) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 0;
            sonuc_ondalik2 = 6;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 9;
        end
    end
    if (sayi == 185) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 0;
            sonuc_ondalik2 = 8;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 9;
        end
    end
    if (sayi == 186) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 1;
            sonuc_ondalik2 = 0;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 9;
        end
    end
    if (sayi == 187) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 1;
            sonuc_ondalik2 = 2;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 9;
        end
    end
    if (sayi == 188) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 1;
            sonuc_ondalik2 = 3;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 9;
        end
    end
    if (sayi == 189) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 1;
            sonuc_ondalik2 = 5;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 8;
        end
    end
    if (sayi == 190) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 1;
            sonuc_ondalik2 = 7;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 8;
        end
    end
    if (sayi == 191) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 1;
            sonuc_ondalik2 = 9;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 8;
        end
    end
    if (sayi == 192) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 2;
            sonuc_ondalik2 = 0;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 7;
        end
    end
    if (sayi == 193) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 2;
            sonuc_ondalik2 = 2;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 7;
        end
    end
    if (sayi == 194) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 2;
            sonuc_ondalik2 = 4;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 7;
        end
    end
    if (sayi == 195) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 2;
            sonuc_ondalik2 = 5;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 6;
        end
    end
    if (sayi == 196) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 2;
            sonuc_ondalik2 = 7;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 6;
        end
    end
    if (sayi == 197) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 2;
            sonuc_ondalik2 = 9;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 5;
        end
    end
    if (sayi == 198) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 3;
            sonuc_ondalik2 = 0;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 5;
        end
    end
    if (sayi == 199) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 3;
            sonuc_ondalik2 = 2;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 4;
        end
    end
    if (sayi == 200) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 3;
            sonuc_ondalik2 = 4;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 3;
        end
    end
    if (sayi == 201) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 3;
            sonuc_ondalik2 = 5;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 3;
        end
    end
    if (sayi == 202) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 3;
            sonuc_ondalik2 = 7;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 2;
        end
    end
    if (sayi == 203) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 3;
            sonuc_ondalik2 = 9;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 2;
        end
    end
    if (sayi == 204) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 4;
            sonuc_ondalik2 = 0;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 1;
        end
    end
    if (sayi == 205) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 4;
            sonuc_ondalik2 = 2;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 0;
        end
    end
    if (sayi == 206) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 4;
            sonuc_ondalik2 = 3;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 8;
            sonuc_ondalik2 = 9;
        end
    end
    if (sayi == 207) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 4;
            sonuc_ondalik2 = 5;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 8;
            sonuc_ondalik2 = 9;
        end
    end
    if (sayi == 208) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 4;
            sonuc_ondalik2 = 6;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 8;
            sonuc_ondalik2 = 8;
        end
    end
    if (sayi == 209) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 4;
            sonuc_ondalik2 = 8;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 8;
            sonuc_ondalik2 = 7;
        end
    end
    if (sayi == 210) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 5;
            sonuc_ondalik2 = 0;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 8;
            sonuc_ondalik2 = 6;
        end
    end
    if (sayi == 211) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 5;
            sonuc_ondalik2 = 1;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 8;
            sonuc_ondalik2 = 5;
        end
    end
    if (sayi == 212) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 5;
            sonuc_ondalik2 = 2;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 8;
            sonuc_ondalik2 = 4;
        end
    end
    if (sayi == 213) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 5;
            sonuc_ondalik2 = 4;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 8;
            sonuc_ondalik2 = 3;
        end
    end
    if (sayi == 214) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 5;
            sonuc_ondalik2 = 5;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 8;
            sonuc_ondalik2 = 2;
        end
    end
    if (sayi == 215) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 5;
            sonuc_ondalik2 = 7;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 8;
            sonuc_ondalik2 = 1;
        end
    end
    if (sayi == 216) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 5;
            sonuc_ondalik2 = 8;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 8;
            sonuc_ondalik2 = 0;
        end
    end
    if (sayi == 217) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 6;
            sonuc_ondalik2 = 0;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 7;
            sonuc_ondalik2 = 9;
        end
    end
    if (sayi == 218) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 6;
            sonuc_ondalik2 = 1;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 7;
            sonuc_ondalik2 = 8;
        end
    end
    if (sayi == 219) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 6;
            sonuc_ondalik2 = 2;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 7;
            sonuc_ondalik2 = 7;
        end
    end
    if (sayi == 220) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 6;
            sonuc_ondalik2 = 4;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 7;
            sonuc_ondalik2 = 6;
        end
    end
    if (sayi == 221) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 6;
            sonuc_ondalik2 = 5;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 7;
            sonuc_ondalik2 = 5;
        end
    end
    if (sayi == 222) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 6;
            sonuc_ondalik2 = 6;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 7;
            sonuc_ondalik2 = 4;
        end
    end
    if (sayi == 223) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 6;
            sonuc_ondalik2 = 8;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 7;
            sonuc_ondalik2 = 3;
        end
    end
    if (sayi == 224) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 6;
            sonuc_ondalik2 = 9;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 7;
            sonuc_ondalik2 = 1;
        end
    end
    if (sayi == 225) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 7;
            sonuc_ondalik2 = 0;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 7;
            sonuc_ondalik2 = 0;
        end
    end
    if (sayi == 226) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 7;
            sonuc_ondalik2 = 1;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 6;
            sonuc_ondalik2 = 9;
        end
    end
    if (sayi == 227) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 7;
            sonuc_ondalik2 = 3;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 6;
            sonuc_ondalik2 = 8;
        end
    end
    if (sayi == 228) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 7;
            sonuc_ondalik2 = 4;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 6;
            sonuc_ondalik2 = 6;
        end
    end
    if (sayi == 229) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 7;
            sonuc_ondalik2 = 5;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 6;
            sonuc_ondalik2 = 5;
        end
    end
    if (sayi == 230) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 7;
            sonuc_ondalik2 = 6;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 6;
            sonuc_ondalik2 = 4;
        end
    end
    if (sayi == 231) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 7;
            sonuc_ondalik2 = 7;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 6;
            sonuc_ondalik2 = 2;
        end
    end
    if (sayi == 232) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 7;
            sonuc_ondalik2 = 8;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 6;
            sonuc_ondalik2 = 1;
        end
    end
    if (sayi == 233) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 7;
            sonuc_ondalik2 = 9;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 6;
            sonuc_ondalik2 = 0;
        end
    end
    if (sayi == 234) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 8;
            sonuc_ondalik2 = 0;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 5;
            sonuc_ondalik2 = 8;
        end
    end
    if (sayi == 235) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 8;
            sonuc_ondalik2 = 1;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 5;
            sonuc_ondalik2 = 7;
        end
    end
    if (sayi == 236) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 8;
            sonuc_ondalik2 = 2;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 5;
            sonuc_ondalik2 = 5;
        end
    end
    if (sayi == 237) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 8;
            sonuc_ondalik2 = 3;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 5;
            sonuc_ondalik2 = 4;
        end
    end
    if (sayi == 238) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 8;
            sonuc_ondalik2 = 4;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 5;
            sonuc_ondalik2 = 2;
        end
    end
    if (sayi == 239) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 8;
            sonuc_ondalik2 = 5;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 5;
            sonuc_ondalik2 = 1;
        end
    end
    if (sayi == 240) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 8;
            sonuc_ondalik2 = 6;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 5;
            sonuc_ondalik2 = 0;
        end
    end
    if (sayi == 241) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 8;
            sonuc_ondalik2 = 7;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 4;
            sonuc_ondalik2 = 8;
        end
    end
    if (sayi == 242) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 8;
            sonuc_ondalik2 = 8;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 4;
            sonuc_ondalik2 = 6;
        end
    end
    if (sayi == 243) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 8;
            sonuc_ondalik2 = 9;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 4;
            sonuc_ondalik2 = 5;
        end
    end
    if (sayi == 244) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 8;
            sonuc_ondalik2 = 9;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 4;
            sonuc_ondalik2 = 3;
        end
    end
    if (sayi == 245) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 0;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 4;
            sonuc_ondalik2 = 2;
        end
    end
    if (sayi == 246) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 1;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 4;
            sonuc_ondalik2 = 0;
        end
    end
    if (sayi == 247) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 2;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 3;
            sonuc_ondalik2 = 9;
        end
    end
    if (sayi == 248) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 2;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 3;
            sonuc_ondalik2 = 7;
        end
    end
    if (sayi == 249) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 3;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 3;
            sonuc_ondalik2 = 5;
        end
    end
    if (sayi == 250) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 3;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 3;
            sonuc_ondalik2 = 4;
        end
    end
    if (sayi == 251) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 4;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 3;
            sonuc_ondalik2 = 2;
        end
    end
    if (sayi == 252) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 5;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 3;
            sonuc_ondalik2 = 0;
        end
    end
    if (sayi == 253) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 5;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 2;
            sonuc_ondalik2 = 9;
        end
    end
    if (sayi == 254) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 6;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 2;
            sonuc_ondalik2 = 7;
        end
    end
    if (sayi == 255) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 6;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 2;
            sonuc_ondalik2 = 5;
        end
    end
    if (sayi == 256) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 7;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 2;
            sonuc_ondalik2 = 4;
        end
    end
    if (sayi == 257) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 7;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 2;
            sonuc_ondalik2 = 2;
        end
    end
    if (sayi == 258) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 7;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 2;
            sonuc_ondalik2 = 0;
        end
    end
    if (sayi == 259) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 8;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 1;
            sonuc_ondalik2 = 9;
        end
    end
    if (sayi == 260) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 8;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 1;
            sonuc_ondalik2 = 7;
        end
    end
    if (sayi == 261) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 8;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 1;
            sonuc_ondalik2 = 5;
        end
    end
    if (sayi == 262) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 9;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 1;
            sonuc_ondalik2 = 3;
        end
    end
    if (sayi == 263) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 9;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 1;
            sonuc_ondalik2 = 2;
        end
    end
    if (sayi == 264) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 9;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 1;
            sonuc_ondalik2 = 0;
        end
    end
    if (sayi == 265) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 9;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 0;
            sonuc_ondalik2 = 8;
        end
    end
    if (sayi == 266) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 9;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 0;
            sonuc_ondalik2 = 6;
        end
    end
    if (sayi == 267) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 9;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 0;
            sonuc_ondalik2 = 5;
        end
    end
    if (sayi == 268) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 9;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 0;
            sonuc_ondalik2 = 3;
        end
    end
    if (sayi == 269) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 9;
        end else begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 0;
            sonuc_ondalik2 = 1;
        end
    end
    if (sayi == 270) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 1;
            sonuc_ondalik1 = 0;
            sonuc_ondalik2 = 0;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 0;
            sonuc_ondalik2 = 0;
        end
    end
    if (sayi == 271) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 9;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 0;
            sonuc_ondalik2 = 1;
        end
    end
    if (sayi == 272) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 9;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 0;
            sonuc_ondalik2 = 3;
        end
    end
    if (sayi == 273) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 9;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 0;
            sonuc_ondalik2 = 5;
        end
    end
    if (sayi == 274) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 9;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 0;
            sonuc_ondalik2 = 6;
        end
    end
    if (sayi == 275) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 9;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 0;
            sonuc_ondalik2 = 8;
        end
    end
    if (sayi == 276) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 9;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 1;
            sonuc_ondalik2 = 0;
        end
    end
    if (sayi == 277) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 9;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 1;
            sonuc_ondalik2 = 2;
        end
    end
    if (sayi == 278) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 9;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 1;
            sonuc_ondalik2 = 3;
        end
    end
    if (sayi == 279) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 8;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 1;
            sonuc_ondalik2 = 5;
        end
    end
    if (sayi == 280) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 8;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 1;
            sonuc_ondalik2 = 7;
        end
    end
    if (sayi == 281) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 8;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 1;
            sonuc_ondalik2 = 9;
        end
    end
    if (sayi == 282) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 7;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 2;
            sonuc_ondalik2 = 0;
        end
    end
    if (sayi == 283) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 7;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 2;
            sonuc_ondalik2 = 2;
        end
    end
    if (sayi == 284) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 7;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 2;
            sonuc_ondalik2 = 4;
        end
    end
    if (sayi == 285) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 6;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 2;
            sonuc_ondalik2 = 5;
        end
    end
    if (sayi == 286) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 6;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 2;
            sonuc_ondalik2 = 7;
        end
    end
    if (sayi == 287) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 5;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 2;
            sonuc_ondalik2 = 9;
        end
    end
    if (sayi == 288) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 5;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 3;
            sonuc_ondalik2 = 0;
        end
    end
    if (sayi == 289) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 4;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 3;
            sonuc_ondalik2 = 2;
        end
    end
    if (sayi == 290) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 3;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 3;
            sonuc_ondalik2 = 4;
        end
    end
    if (sayi == 291) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 3;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 3;
            sonuc_ondalik2 = 5;
        end
    end
    if (sayi == 292) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 2;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 3;
            sonuc_ondalik2 = 7;
        end
    end
    if (sayi == 293) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 2;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 3;
            sonuc_ondalik2 = 9;
        end
    end
    if (sayi == 294) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 1;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 4;
            sonuc_ondalik2 = 0;
        end
    end
    if (sayi == 295) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 0;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 4;
            sonuc_ondalik2 = 2;
        end
    end
    if (sayi == 296) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 8;
            sonuc_ondalik2 = 9;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 4;
            sonuc_ondalik2 = 3;
        end
    end
    if (sayi == 297) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 8;
            sonuc_ondalik2 = 9;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 4;
            sonuc_ondalik2 = 5;
        end
    end
    if (sayi == 298) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 8;
            sonuc_ondalik2 = 8;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 4;
            sonuc_ondalik2 = 6;
        end
    end
    if (sayi == 299) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 8;
            sonuc_ondalik2 = 7;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 4;
            sonuc_ondalik2 = 8;
        end
    end
    if (sayi == 300) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 8;
            sonuc_ondalik2 = 6;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 5;
            sonuc_ondalik2 = 0;
        end
    end
    if (sayi == 301) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 8;
            sonuc_ondalik2 = 5;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 5;
            sonuc_ondalik2 = 1;
        end
    end
    if (sayi == 302) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 8;
            sonuc_ondalik2 = 4;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 5;
            sonuc_ondalik2 = 2;
        end
    end
    if (sayi == 303) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 8;
            sonuc_ondalik2 = 3;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 5;
            sonuc_ondalik2 = 4;
        end
    end
    if (sayi == 304) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 8;
            sonuc_ondalik2 = 2;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 5;
            sonuc_ondalik2 = 5;
        end
    end
    if (sayi == 305) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 8;
            sonuc_ondalik2 = 1;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 5;
            sonuc_ondalik2 = 7;
        end
    end
    if (sayi == 306) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 8;
            sonuc_ondalik2 = 0;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 5;
            sonuc_ondalik2 = 8;
        end
    end
    if (sayi == 307) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 7;
            sonuc_ondalik2 = 9;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 6;
            sonuc_ondalik2 = 0;
        end
    end
    if (sayi == 308) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 7;
            sonuc_ondalik2 = 8;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 6;
            sonuc_ondalik2 = 1;
        end
    end
    if (sayi == 309) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 7;
            sonuc_ondalik2 = 7;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 6;
            sonuc_ondalik2 = 2;
        end
    end
    if (sayi == 310) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 7;
            sonuc_ondalik2 = 6;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 6;
            sonuc_ondalik2 = 4;
        end
    end
    if (sayi == 311) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 7;
            sonuc_ondalik2 = 5;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 6;
            sonuc_ondalik2 = 5;
        end
    end
    if (sayi == 312) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 7;
            sonuc_ondalik2 = 4;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 6;
            sonuc_ondalik2 = 6;
        end
    end
    if (sayi == 313) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 7;
            sonuc_ondalik2 = 3;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 6;
            sonuc_ondalik2 = 8;
        end
    end
    if (sayi == 314) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 7;
            sonuc_ondalik2 = 1;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 6;
            sonuc_ondalik2 = 9;
        end
    end
    if (sayi == 315) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 7;
            sonuc_ondalik2 = 0;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 7;
            sonuc_ondalik2 = 0;
        end
    end
    if (sayi == 316) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 6;
            sonuc_ondalik2 = 9;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 7;
            sonuc_ondalik2 = 1;
        end
    end
    if (sayi == 317) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 6;
            sonuc_ondalik2 = 8;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 7;
            sonuc_ondalik2 = 3;
        end
    end
    if (sayi == 318) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 6;
            sonuc_ondalik2 = 6;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 7;
            sonuc_ondalik2 = 4;
        end
    end
    if (sayi == 319) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 6;
            sonuc_ondalik2 = 5;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 7;
            sonuc_ondalik2 = 5;
        end
    end
    if (sayi == 320) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 6;
            sonuc_ondalik2 = 4;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 7;
            sonuc_ondalik2 = 6;
        end
    end
    if (sayi == 321) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 6;
            sonuc_ondalik2 = 2;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 7;
            sonuc_ondalik2 = 7;
        end
    end
    if (sayi == 322) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 6;
            sonuc_ondalik2 = 1;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 7;
            sonuc_ondalik2 = 8;
        end
    end
    if (sayi == 323) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 6;
            sonuc_ondalik2 = 0;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 7;
            sonuc_ondalik2 = 9;
        end
    end
    if (sayi == 324) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 5;
            sonuc_ondalik2 = 8;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 8;
            sonuc_ondalik2 = 0;
        end
    end
    if (sayi == 325) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 5;
            sonuc_ondalik2 = 7;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 8;
            sonuc_ondalik2 = 1;
        end
    end
    if (sayi == 326) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 5;
            sonuc_ondalik2 = 5;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 8;
            sonuc_ondalik2 = 2;
        end
    end
    if (sayi == 327) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 5;
            sonuc_ondalik2 = 4;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 8;
            sonuc_ondalik2 = 3;
        end
    end
    if (sayi == 328) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 5;
            sonuc_ondalik2 = 2;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 8;
            sonuc_ondalik2 = 4;
        end
    end
    if (sayi == 329) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 5;
            sonuc_ondalik2 = 1;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 8;
            sonuc_ondalik2 = 5;
        end
    end
    if (sayi == 330) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 5;
            sonuc_ondalik2 = 0;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 8;
            sonuc_ondalik2 = 6;
        end
    end
    if (sayi == 331) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 4;
            sonuc_ondalik2 = 8;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 8;
            sonuc_ondalik2 = 7;
        end
    end
    if (sayi == 332) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 4;
            sonuc_ondalik2 = 6;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 8;
            sonuc_ondalik2 = 8;
        end
    end
    if (sayi == 333) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 4;
            sonuc_ondalik2 = 5;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 8;
            sonuc_ondalik2 = 9;
        end
    end
    if (sayi == 334) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 4;
            sonuc_ondalik2 = 3;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 8;
            sonuc_ondalik2 = 9;
        end
    end
    if (sayi == 335) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 4;
            sonuc_ondalik2 = 2;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 0;
        end
    end
    if (sayi == 336) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 4;
            sonuc_ondalik2 = 0;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 1;
        end
    end
    if (sayi == 337) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 3;
            sonuc_ondalik2 = 9;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 2;
        end
    end
    if (sayi == 338) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 3;
            sonuc_ondalik2 = 7;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 2;
        end
    end
    if (sayi == 339) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 3;
            sonuc_ondalik2 = 5;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 3;
        end
    end
    if (sayi == 340) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 3;
            sonuc_ondalik2 = 4;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 3;
        end
    end
    if (sayi == 341) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 3;
            sonuc_ondalik2 = 2;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 4;
        end
    end
    if (sayi == 342) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 3;
            sonuc_ondalik2 = 0;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 5;
        end
    end
    if (sayi == 343) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 2;
            sonuc_ondalik2 = 9;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 5;
        end
    end
    if (sayi == 344) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 2;
            sonuc_ondalik2 = 7;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 6;
        end
    end
    if (sayi == 345) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 2;
            sonuc_ondalik2 = 5;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 6;
        end
    end
    if (sayi == 346) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 2;
            sonuc_ondalik2 = 4;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 7;
        end
    end
    if (sayi == 347) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 2;
            sonuc_ondalik2 = 2;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 7;
        end
    end
    if (sayi == 348) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 2;
            sonuc_ondalik2 = 0;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 7;
        end
    end
    if (sayi == 349) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 1;
            sonuc_ondalik2 = 9;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 8;
        end
    end
    if (sayi == 350) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 1;
            sonuc_ondalik2 = 7;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 8;
        end
    end
    if (sayi == 351) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 1;
            sonuc_ondalik2 = 5;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 8;
        end
    end
    if (sayi == 352) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 1;
            sonuc_ondalik2 = 3;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 9;
        end
    end
    if (sayi == 353) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 1;
            sonuc_ondalik2 = 2;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 9;
        end
    end
    if (sayi == 354) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 1;
            sonuc_ondalik2 = 0;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 9;
        end
    end
    if (sayi == 355) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 0;
            sonuc_ondalik2 = 8;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 9;
        end
    end
    if (sayi == 356) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 0;
            sonuc_ondalik2 = 6;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 9;
        end
    end
    if (sayi == 357) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 0;
            sonuc_ondalik2 = 5;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 9;
        end
    end
    if (sayi == 358) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 0;
            sonuc_ondalik2 = 3;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 9;
        end
    end
    if (sayi == 359) begin
        if (islem == 1) begin
            sonuc_isareti = 1;
            sonuc_tam = 0;
            sonuc_ondalik1 = 0;
            sonuc_ondalik2 = 1;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 9;
            sonuc_ondalik2 = 9;
        end
    end
    if (sayi == 360) begin
        if (islem == 1) begin
            sonuc_isareti = 0;
            sonuc_tam = 0;
            sonuc_ondalik1 = 0;
            sonuc_ondalik2 = 0;
        end else begin
            sonuc_isareti = 0;
            sonuc_tam = 1;
            sonuc_ondalik1 = 0;
            sonuc_ondalik2 = 0;
        end
    end

    end
endmodule