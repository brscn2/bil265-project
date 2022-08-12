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
        output reg sonuc_isareti,
        output reg [4:0] sonuc_tam,
        output reg [3:0] sonuc_ondalik1, sonuc_ondalik2
    );
    
    
    // Newton Method: (N / A + A) / 2
    
    always @(*) begin
        	if (sayi == 0) begin
			sonuc_isareti = 0;
			sonuc_tam = 0;
			sonuc_ondalik1 = 0;
			sonuc_ondalik2 = 0;
	end
	if (sayi == 1) begin
			sonuc_isareti = 0;
			sonuc_tam = 1;
			sonuc_ondalik1 = 0;
			sonuc_ondalik2 = 0;
	end
	if (sayi == 2) begin
			sonuc_isareti = 0;
			sonuc_tam = 1;
			sonuc_ondalik1 = 4;
			sonuc_ondalik2 = 1;
	end
	if (sayi == 3) begin
			sonuc_isareti = 0;
			sonuc_tam = 1;
			sonuc_ondalik1 = 7;
			sonuc_ondalik2 = 3;
	end
	if (sayi == 4) begin
			sonuc_isareti = 0;
			sonuc_tam = 2;
			sonuc_ondalik1 = 0;
			sonuc_ondalik2 = 0;
	end
	if (sayi == 5) begin
			sonuc_isareti = 0;
			sonuc_tam = 2;
			sonuc_ondalik1 = 2;
			sonuc_ondalik2 = 3;
	end
	if (sayi == 6) begin
			sonuc_isareti = 0;
			sonuc_tam = 2;
			sonuc_ondalik1 = 4;
			sonuc_ondalik2 = 4;
	end
	if (sayi == 7) begin
			sonuc_isareti = 0;
			sonuc_tam = 2;
			sonuc_ondalik1 = 6;
			sonuc_ondalik2 = 4;
	end
	if (sayi == 8) begin
			sonuc_isareti = 0;
			sonuc_tam = 2;
			sonuc_ondalik1 = 8;
			sonuc_ondalik2 = 2;
	end
	if (sayi == 9) begin
			sonuc_isareti = 0;
			sonuc_tam = 3;
			sonuc_ondalik1 = 0;
			sonuc_ondalik2 = 0;
	end
	if (sayi == 10) begin
			sonuc_isareti = 0;
			sonuc_tam = 3;
			sonuc_ondalik1 = 1;
			sonuc_ondalik2 = 6;
	end
	if (sayi == 11) begin
			sonuc_isareti = 0;
			sonuc_tam = 3;
			sonuc_ondalik1 = 3;
			sonuc_ondalik2 = 1;
	end
	if (sayi == 12) begin
			sonuc_isareti = 0;
			sonuc_tam = 3;
			sonuc_ondalik1 = 4;
			sonuc_ondalik2 = 6;
	end
	if (sayi == 13) begin
			sonuc_isareti = 0;
			sonuc_tam = 3;
			sonuc_ondalik1 = 6;
			sonuc_ondalik2 = 0;
	end
	if (sayi == 14) begin
			sonuc_isareti = 0;
			sonuc_tam = 3;
			sonuc_ondalik1 = 7;
			sonuc_ondalik2 = 4;
	end
	if (sayi == 15) begin
			sonuc_isareti = 0;
			sonuc_tam = 3;
			sonuc_ondalik1 = 8;
			sonuc_ondalik2 = 7;
	end
	if (sayi == 16) begin
			sonuc_isareti = 0;
			sonuc_tam = 4;
			sonuc_ondalik1 = 0;
			sonuc_ondalik2 = 0;
	end
	if (sayi == 17) begin
			sonuc_isareti = 0;
			sonuc_tam = 4;
			sonuc_ondalik1 = 1;
			sonuc_ondalik2 = 2;
	end
	if (sayi == 18) begin
			sonuc_isareti = 0;
			sonuc_tam = 4;
			sonuc_ondalik1 = 2;
			sonuc_ondalik2 = 4;
	end
	if (sayi == 19) begin
			sonuc_isareti = 0;
			sonuc_tam = 4;
			sonuc_ondalik1 = 3;
			sonuc_ondalik2 = 5;
	end
	if (sayi == 20) begin
			sonuc_isareti = 0;
			sonuc_tam = 4;
			sonuc_ondalik1 = 4;
			sonuc_ondalik2 = 7;
	end
	if (sayi == 21) begin
			sonuc_isareti = 0;
			sonuc_tam = 4;
			sonuc_ondalik1 = 5;
			sonuc_ondalik2 = 8;
	end
	if (sayi == 22) begin
			sonuc_isareti = 0;
			sonuc_tam = 4;
			sonuc_ondalik1 = 6;
			sonuc_ondalik2 = 9;
	end
	if (sayi == 23) begin
			sonuc_isareti = 0;
			sonuc_tam = 4;
			sonuc_ondalik1 = 7;
			sonuc_ondalik2 = 9;
	end
	if (sayi == 24) begin
			sonuc_isareti = 0;
			sonuc_tam = 4;
			sonuc_ondalik1 = 8;
			sonuc_ondalik2 = 9;
	end
	if (sayi == 25) begin
			sonuc_isareti = 0;
			sonuc_tam = 5;
			sonuc_ondalik1 = 0;
			sonuc_ondalik2 = 0;
	end
	if (sayi == 26) begin
			sonuc_isareti = 0;
			sonuc_tam = 5;
			sonuc_ondalik1 = 0;
			sonuc_ondalik2 = 9;
	end
	if (sayi == 27) begin
			sonuc_isareti = 0;
			sonuc_tam = 5;
			sonuc_ondalik1 = 1;
			sonuc_ondalik2 = 9;
	end
	if (sayi == 28) begin
			sonuc_isareti = 0;
			sonuc_tam = 5;
			sonuc_ondalik1 = 2;
			sonuc_ondalik2 = 9;
	end
	if (sayi == 29) begin
			sonuc_isareti = 0;
			sonuc_tam = 5;
			sonuc_ondalik1 = 3;
			sonuc_ondalik2 = 8;
	end
	if (sayi == 30) begin
			sonuc_isareti = 0;
			sonuc_tam = 5;
			sonuc_ondalik1 = 4;
			sonuc_ondalik2 = 7;
	end
	if (sayi == 31) begin
			sonuc_isareti = 0;
			sonuc_tam = 5;
			sonuc_ondalik1 = 5;
			sonuc_ondalik2 = 6;
	end
	if (sayi == 32) begin
			sonuc_isareti = 0;
			sonuc_tam = 5;
			sonuc_ondalik1 = 6;
			sonuc_ondalik2 = 5;
	end
	if (sayi == 33) begin
			sonuc_isareti = 0;
			sonuc_tam = 5;
			sonuc_ondalik1 = 7;
			sonuc_ondalik2 = 4;
	end
	if (sayi == 34) begin
			sonuc_isareti = 0;
			sonuc_tam = 5;
			sonuc_ondalik1 = 8;
			sonuc_ondalik2 = 3;
	end
	if (sayi == 35) begin
			sonuc_isareti = 0;
			sonuc_tam = 5;
			sonuc_ondalik1 = 9;
			sonuc_ondalik2 = 1;
	end
	if (sayi == 36) begin
			sonuc_isareti = 0;
			sonuc_tam = 6;
			sonuc_ondalik1 = 0;
			sonuc_ondalik2 = 0;
	end
	if (sayi == 37) begin
			sonuc_isareti = 0;
			sonuc_tam = 6;
			sonuc_ondalik1 = 0;
			sonuc_ondalik2 = 8;
	end
	if (sayi == 38) begin
			sonuc_isareti = 0;
			sonuc_tam = 6;
			sonuc_ondalik1 = 1;
			sonuc_ondalik2 = 6;
	end
	if (sayi == 39) begin
			sonuc_isareti = 0;
			sonuc_tam = 6;
			sonuc_ondalik1 = 2;
			sonuc_ondalik2 = 4;
	end
	if (sayi == 40) begin
			sonuc_isareti = 0;
			sonuc_tam = 6;
			sonuc_ondalik1 = 3;
			sonuc_ondalik2 = 2;
	end
	if (sayi == 41) begin
			sonuc_isareti = 0;
			sonuc_tam = 6;
			sonuc_ondalik1 = 4;
			sonuc_ondalik2 = 0;
	end
	if (sayi == 42) begin
			sonuc_isareti = 0;
			sonuc_tam = 6;
			sonuc_ondalik1 = 4;
			sonuc_ondalik2 = 8;
	end
	if (sayi == 43) begin
			sonuc_isareti = 0;
			sonuc_tam = 6;
			sonuc_ondalik1 = 5;
			sonuc_ondalik2 = 5;
	end
	if (sayi == 44) begin
			sonuc_isareti = 0;
			sonuc_tam = 6;
			sonuc_ondalik1 = 6;
			sonuc_ondalik2 = 3;
	end
	if (sayi == 45) begin
			sonuc_isareti = 0;
			sonuc_tam = 6;
			sonuc_ondalik1 = 7;
			sonuc_ondalik2 = 0;
	end
	if (sayi == 46) begin
			sonuc_isareti = 0;
			sonuc_tam = 6;
			sonuc_ondalik1 = 7;
			sonuc_ondalik2 = 8;
	end
	if (sayi == 47) begin
			sonuc_isareti = 0;
			sonuc_tam = 6;
			sonuc_ondalik1 = 8;
			sonuc_ondalik2 = 5;
	end
	if (sayi == 48) begin
			sonuc_isareti = 0;
			sonuc_tam = 6;
			sonuc_ondalik1 = 9;
			sonuc_ondalik2 = 2;
	end
	if (sayi == 49) begin
			sonuc_isareti = 0;
			sonuc_tam = 7;
			sonuc_ondalik1 = 0;
			sonuc_ondalik2 = 0;
	end
	if (sayi == 50) begin
			sonuc_isareti = 0;
			sonuc_tam = 7;
			sonuc_ondalik1 = 0;
			sonuc_ondalik2 = 7;
	end
	if (sayi == 51) begin
			sonuc_isareti = 0;
			sonuc_tam = 7;
			sonuc_ondalik1 = 1;
			sonuc_ondalik2 = 4;
	end
	if (sayi == 52) begin
			sonuc_isareti = 0;
			sonuc_tam = 7;
			sonuc_ondalik1 = 2;
			sonuc_ondalik2 = 1;
	end
	if (sayi == 53) begin
			sonuc_isareti = 0;
			sonuc_tam = 7;
			sonuc_ondalik1 = 2;
			sonuc_ondalik2 = 8;
	end
	if (sayi == 54) begin
			sonuc_isareti = 0;
			sonuc_tam = 7;
			sonuc_ondalik1 = 3;
			sonuc_ondalik2 = 4;
	end
	if (sayi == 55) begin
			sonuc_isareti = 0;
			sonuc_tam = 7;
			sonuc_ondalik1 = 4;
			sonuc_ondalik2 = 1;
	end
	if (sayi == 56) begin
			sonuc_isareti = 0;
			sonuc_tam = 7;
			sonuc_ondalik1 = 4;
			sonuc_ondalik2 = 8;
	end
	if (sayi == 57) begin
			sonuc_isareti = 0;
			sonuc_tam = 7;
			sonuc_ondalik1 = 5;
			sonuc_ondalik2 = 4;
	end
	if (sayi == 58) begin
			sonuc_isareti = 0;
			sonuc_tam = 7;
			sonuc_ondalik1 = 6;
			sonuc_ondalik2 = 1;
	end
	if (sayi == 59) begin
			sonuc_isareti = 0;
			sonuc_tam = 7;
			sonuc_ondalik1 = 6;
			sonuc_ondalik2 = 8;
	end
	if (sayi == 60) begin
			sonuc_isareti = 0;
			sonuc_tam = 7;
			sonuc_ondalik1 = 7;
			sonuc_ondalik2 = 4;
	end
	if (sayi == 61) begin
			sonuc_isareti = 0;
			sonuc_tam = 7;
			sonuc_ondalik1 = 8;
			sonuc_ondalik2 = 1;
	end
	if (sayi == 62) begin
			sonuc_isareti = 0;
			sonuc_tam = 7;
			sonuc_ondalik1 = 8;
			sonuc_ondalik2 = 7;
	end
	if (sayi == 63) begin
			sonuc_isareti = 0;
			sonuc_tam = 7;
			sonuc_ondalik1 = 9;
			sonuc_ondalik2 = 3;
	end
	if (sayi == 64) begin
			sonuc_isareti = 0;
			sonuc_tam = 8;
			sonuc_ondalik1 = 0;
			sonuc_ondalik2 = 0;
	end
	if (sayi == 65) begin
			sonuc_isareti = 0;
			sonuc_tam = 8;
			sonuc_ondalik1 = 0;
			sonuc_ondalik2 = 6;
	end
	if (sayi == 66) begin
			sonuc_isareti = 0;
			sonuc_tam = 8;
			sonuc_ondalik1 = 1;
			sonuc_ondalik2 = 2;
	end
	if (sayi == 67) begin
			sonuc_isareti = 0;
			sonuc_tam = 8;
			sonuc_ondalik1 = 1;
			sonuc_ondalik2 = 8;
	end
	if (sayi == 68) begin
			sonuc_isareti = 0;
			sonuc_tam = 8;
			sonuc_ondalik1 = 2;
			sonuc_ondalik2 = 4;
	end
	if (sayi == 69) begin
			sonuc_isareti = 0;
			sonuc_tam = 8;
			sonuc_ondalik1 = 3;
			sonuc_ondalik2 = 0;
	end
	if (sayi == 70) begin
			sonuc_isareti = 0;
			sonuc_tam = 8;
			sonuc_ondalik1 = 3;
			sonuc_ondalik2 = 6;
	end
	if (sayi == 71) begin
			sonuc_isareti = 0;
			sonuc_tam = 8;
			sonuc_ondalik1 = 4;
			sonuc_ondalik2 = 2;
	end
	if (sayi == 72) begin
			sonuc_isareti = 0;
			sonuc_tam = 8;
			sonuc_ondalik1 = 4;
			sonuc_ondalik2 = 8;
	end
	if (sayi == 73) begin
			sonuc_isareti = 0;
			sonuc_tam = 8;
			sonuc_ondalik1 = 5;
			sonuc_ondalik2 = 4;
	end
	if (sayi == 74) begin
			sonuc_isareti = 0;
			sonuc_tam = 8;
			sonuc_ondalik1 = 6;
			sonuc_ondalik2 = 0;
	end
	if (sayi == 75) begin
			sonuc_isareti = 0;
			sonuc_tam = 8;
			sonuc_ondalik1 = 6;
			sonuc_ondalik2 = 6;
	end
	if (sayi == 76) begin
			sonuc_isareti = 0;
			sonuc_tam = 8;
			sonuc_ondalik1 = 7;
			sonuc_ondalik2 = 1;
	end
	if (sayi == 77) begin
			sonuc_isareti = 0;
			sonuc_tam = 8;
			sonuc_ondalik1 = 7;
			sonuc_ondalik2 = 7;
	end
	if (sayi == 78) begin
			sonuc_isareti = 0;
			sonuc_tam = 8;
			sonuc_ondalik1 = 8;
			sonuc_ondalik2 = 3;
	end
	if (sayi == 79) begin
			sonuc_isareti = 0;
			sonuc_tam = 8;
			sonuc_ondalik1 = 8;
			sonuc_ondalik2 = 8;
	end
	if (sayi == 80) begin
			sonuc_isareti = 0;
			sonuc_tam = 8;
			sonuc_ondalik1 = 9;
			sonuc_ondalik2 = 4;
	end
	if (sayi == 81) begin
			sonuc_isareti = 0;
			sonuc_tam = 9;
			sonuc_ondalik1 = 0;
			sonuc_ondalik2 = 0;
	end
	if (sayi == 82) begin
			sonuc_isareti = 0;
			sonuc_tam = 9;
			sonuc_ondalik1 = 0;
			sonuc_ondalik2 = 5;
	end
	if (sayi == 83) begin
			sonuc_isareti = 0;
			sonuc_tam = 9;
			sonuc_ondalik1 = 1;
			sonuc_ondalik2 = 1;
	end
	if (sayi == 84) begin
			sonuc_isareti = 0;
			sonuc_tam = 9;
			sonuc_ondalik1 = 1;
			sonuc_ondalik2 = 6;
	end
	if (sayi == 85) begin
			sonuc_isareti = 0;
			sonuc_tam = 9;
			sonuc_ondalik1 = 2;
			sonuc_ondalik2 = 1;
	end
	if (sayi == 86) begin
			sonuc_isareti = 0;
			sonuc_tam = 9;
			sonuc_ondalik1 = 2;
			sonuc_ondalik2 = 7;
	end
	if (sayi == 87) begin
			sonuc_isareti = 0;
			sonuc_tam = 9;
			sonuc_ondalik1 = 3;
			sonuc_ondalik2 = 2;
	end
	if (sayi == 88) begin
			sonuc_isareti = 0;
			sonuc_tam = 9;
			sonuc_ondalik1 = 3;
			sonuc_ondalik2 = 8;
	end
	if (sayi == 89) begin
			sonuc_isareti = 0;
			sonuc_tam = 9;
			sonuc_ondalik1 = 4;
			sonuc_ondalik2 = 3;
	end
	if (sayi == 90) begin
			sonuc_isareti = 0;
			sonuc_tam = 9;
			sonuc_ondalik1 = 4;
			sonuc_ondalik2 = 8;
	end
	if (sayi == 91) begin
			sonuc_isareti = 0;
			sonuc_tam = 9;
			sonuc_ondalik1 = 5;
			sonuc_ondalik2 = 3;
	end
	if (sayi == 92) begin
			sonuc_isareti = 0;
			sonuc_tam = 9;
			sonuc_ondalik1 = 5;
			sonuc_ondalik2 = 9;
	end
	if (sayi == 93) begin
			sonuc_isareti = 0;
			sonuc_tam = 9;
			sonuc_ondalik1 = 6;
			sonuc_ondalik2 = 4;
	end
	if (sayi == 94) begin
			sonuc_isareti = 0;
			sonuc_tam = 9;
			sonuc_ondalik1 = 6;
			sonuc_ondalik2 = 9;
	end
	if (sayi == 95) begin
			sonuc_isareti = 0;
			sonuc_tam = 9;
			sonuc_ondalik1 = 7;
			sonuc_ondalik2 = 4;
	end
	if (sayi == 96) begin
			sonuc_isareti = 0;
			sonuc_tam = 9;
			sonuc_ondalik1 = 7;
			sonuc_ondalik2 = 9;
	end
	if (sayi == 97) begin
			sonuc_isareti = 0;
			sonuc_tam = 9;
			sonuc_ondalik1 = 8;
			sonuc_ondalik2 = 4;
	end
	if (sayi == 98) begin
			sonuc_isareti = 0;
			sonuc_tam = 9;
			sonuc_ondalik1 = 8;
			sonuc_ondalik2 = 9;
	end
	if (sayi == 99) begin
			sonuc_isareti = 0;
			sonuc_tam = 9;
			sonuc_ondalik1 = 9;
			sonuc_ondalik2 = 4;
	end
	if (sayi == 100) begin
			sonuc_isareti = 0;
			sonuc_tam = 10;
			sonuc_ondalik1 = 0;
			sonuc_ondalik2 = 0;
	end
	if (sayi == 101) begin
			sonuc_isareti = 0;
			sonuc_tam = 10;
			sonuc_ondalik1 = 0;
			sonuc_ondalik2 = 4;
	end
	if (sayi == 102) begin
			sonuc_isareti = 0;
			sonuc_tam = 10;
			sonuc_ondalik1 = 0;
			sonuc_ondalik2 = 9;
	end
	if (sayi == 103) begin
			sonuc_isareti = 0;
			sonuc_tam = 10;
			sonuc_ondalik1 = 1;
			sonuc_ondalik2 = 4;
	end
	if (sayi == 104) begin
			sonuc_isareti = 0;
			sonuc_tam = 10;
			sonuc_ondalik1 = 1;
			sonuc_ondalik2 = 9;
	end
	if (sayi == 105) begin
			sonuc_isareti = 0;
			sonuc_tam = 10;
			sonuc_ondalik1 = 2;
			sonuc_ondalik2 = 4;
	end
	if (sayi == 106) begin
			sonuc_isareti = 0;
			sonuc_tam = 10;
			sonuc_ondalik1 = 2;
			sonuc_ondalik2 = 9;
	end
	if (sayi == 107) begin
			sonuc_isareti = 0;
			sonuc_tam = 10;
			sonuc_ondalik1 = 3;
			sonuc_ondalik2 = 4;
	end
	if (sayi == 108) begin
			sonuc_isareti = 0;
			sonuc_tam = 10;
			sonuc_ondalik1 = 3;
			sonuc_ondalik2 = 9;
	end
	if (sayi == 109) begin
			sonuc_isareti = 0;
			sonuc_tam = 10;
			sonuc_ondalik1 = 4;
			sonuc_ondalik2 = 4;
	end
	if (sayi == 110) begin
			sonuc_isareti = 0;
			sonuc_tam = 10;
			sonuc_ondalik1 = 4;
			sonuc_ondalik2 = 8;
	end
	if (sayi == 111) begin
			sonuc_isareti = 0;
			sonuc_tam = 10;
			sonuc_ondalik1 = 5;
			sonuc_ondalik2 = 3;
	end
	if (sayi == 112) begin
			sonuc_isareti = 0;
			sonuc_tam = 10;
			sonuc_ondalik1 = 5;
			sonuc_ondalik2 = 8;
	end
	if (sayi == 113) begin
			sonuc_isareti = 0;
			sonuc_tam = 10;
			sonuc_ondalik1 = 6;
			sonuc_ondalik2 = 3;
	end
	if (sayi == 114) begin
			sonuc_isareti = 0;
			sonuc_tam = 10;
			sonuc_ondalik1 = 6;
			sonuc_ondalik2 = 7;
	end
	if (sayi == 115) begin
			sonuc_isareti = 0;
			sonuc_tam = 10;
			sonuc_ondalik1 = 7;
			sonuc_ondalik2 = 2;
	end
	if (sayi == 116) begin
			sonuc_isareti = 0;
			sonuc_tam = 10;
			sonuc_ondalik1 = 7;
			sonuc_ondalik2 = 7;
	end
	if (sayi == 117) begin
			sonuc_isareti = 0;
			sonuc_tam = 10;
			sonuc_ondalik1 = 8;
			sonuc_ondalik2 = 1;
	end
	if (sayi == 118) begin
			sonuc_isareti = 0;
			sonuc_tam = 10;
			sonuc_ondalik1 = 8;
			sonuc_ondalik2 = 6;
	end
	if (sayi == 119) begin
			sonuc_isareti = 0;
			sonuc_tam = 10;
			sonuc_ondalik1 = 9;
			sonuc_ondalik2 = 0;
	end
	if (sayi == 120) begin
			sonuc_isareti = 0;
			sonuc_tam = 10;
			sonuc_ondalik1 = 9;
			sonuc_ondalik2 = 5;
	end
	if (sayi == 121) begin
			sonuc_isareti = 0;
			sonuc_tam = 11;
			sonuc_ondalik1 = 0;
			sonuc_ondalik2 = 0;
	end
	if (sayi == 122) begin
			sonuc_isareti = 0;
			sonuc_tam = 11;
			sonuc_ondalik1 = 0;
			sonuc_ondalik2 = 4;
	end
	if (sayi == 123) begin
			sonuc_isareti = 0;
			sonuc_tam = 11;
			sonuc_ondalik1 = 0;
			sonuc_ondalik2 = 9;
	end
	if (sayi == 124) begin
			sonuc_isareti = 0;
			sonuc_tam = 11;
			sonuc_ondalik1 = 1;
			sonuc_ondalik2 = 3;
	end
	if (sayi == 125) begin
			sonuc_isareti = 0;
			sonuc_tam = 11;
			sonuc_ondalik1 = 1;
			sonuc_ondalik2 = 8;
	end
	if (sayi == 126) begin
			sonuc_isareti = 0;
			sonuc_tam = 11;
			sonuc_ondalik1 = 2;
			sonuc_ondalik2 = 2;
	end
	if (sayi == 127) begin
			sonuc_isareti = 0;
			sonuc_tam = 11;
			sonuc_ondalik1 = 2;
			sonuc_ondalik2 = 6;
	end
	if (sayi == 128) begin
			sonuc_isareti = 0;
			sonuc_tam = 11;
			sonuc_ondalik1 = 3;
			sonuc_ondalik2 = 1;
	end
	if (sayi == 129) begin
			sonuc_isareti = 0;
			sonuc_tam = 11;
			sonuc_ondalik1 = 3;
			sonuc_ondalik2 = 5;
	end
	if (sayi == 130) begin
			sonuc_isareti = 0;
			sonuc_tam = 11;
			sonuc_ondalik1 = 4;
			sonuc_ondalik2 = 0;
	end
	if (sayi == 131) begin
			sonuc_isareti = 0;
			sonuc_tam = 11;
			sonuc_ondalik1 = 4;
			sonuc_ondalik2 = 4;
	end
	if (sayi == 132) begin
			sonuc_isareti = 0;
			sonuc_tam = 11;
			sonuc_ondalik1 = 4;
			sonuc_ondalik2 = 8;
	end
	if (sayi == 133) begin
			sonuc_isareti = 0;
			sonuc_tam = 11;
			sonuc_ondalik1 = 5;
			sonuc_ondalik2 = 3;
	end
	if (sayi == 134) begin
			sonuc_isareti = 0;
			sonuc_tam = 11;
			sonuc_ondalik1 = 5;
			sonuc_ondalik2 = 7;
	end
	if (sayi == 135) begin
			sonuc_isareti = 0;
			sonuc_tam = 11;
			sonuc_ondalik1 = 6;
			sonuc_ondalik2 = 1;
	end
	if (sayi == 136) begin
			sonuc_isareti = 0;
			sonuc_tam = 11;
			sonuc_ondalik1 = 6;
			sonuc_ondalik2 = 6;
	end
	if (sayi == 137) begin
			sonuc_isareti = 0;
			sonuc_tam = 11;
			sonuc_ondalik1 = 7;
			sonuc_ondalik2 = 0;
	end
	if (sayi == 138) begin
			sonuc_isareti = 0;
			sonuc_tam = 11;
			sonuc_ondalik1 = 7;
			sonuc_ondalik2 = 4;
	end
	if (sayi == 139) begin
			sonuc_isareti = 0;
			sonuc_tam = 11;
			sonuc_ondalik1 = 7;
			sonuc_ondalik2 = 8;
	end
	if (sayi == 140) begin
			sonuc_isareti = 0;
			sonuc_tam = 11;
			sonuc_ondalik1 = 8;
			sonuc_ondalik2 = 3;
	end
	if (sayi == 141) begin
			sonuc_isareti = 0;
			sonuc_tam = 11;
			sonuc_ondalik1 = 8;
			sonuc_ondalik2 = 7;
	end
	if (sayi == 142) begin
			sonuc_isareti = 0;
			sonuc_tam = 11;
			sonuc_ondalik1 = 9;
			sonuc_ondalik2 = 1;
	end
	if (sayi == 143) begin
			sonuc_isareti = 0;
			sonuc_tam = 11;
			sonuc_ondalik1 = 9;
			sonuc_ondalik2 = 5;
	end
	if (sayi == 144) begin
			sonuc_isareti = 0;
			sonuc_tam = 12;
			sonuc_ondalik1 = 0;
			sonuc_ondalik2 = 0;
	end
	if (sayi == 145) begin
			sonuc_isareti = 0;
			sonuc_tam = 12;
			sonuc_ondalik1 = 0;
			sonuc_ondalik2 = 4;
	end
	if (sayi == 146) begin
			sonuc_isareti = 0;
			sonuc_tam = 12;
			sonuc_ondalik1 = 0;
			sonuc_ondalik2 = 8;
	end
	if (sayi == 147) begin
			sonuc_isareti = 0;
			sonuc_tam = 12;
			sonuc_ondalik1 = 1;
			sonuc_ondalik2 = 2;
	end
	if (sayi == 148) begin
			sonuc_isareti = 0;
			sonuc_tam = 12;
			sonuc_ondalik1 = 1;
			sonuc_ondalik2 = 6;
	end
	if (sayi == 149) begin
			sonuc_isareti = 0;
			sonuc_tam = 12;
			sonuc_ondalik1 = 2;
			sonuc_ondalik2 = 0;
	end
	if (sayi == 150) begin
			sonuc_isareti = 0;
			sonuc_tam = 12;
			sonuc_ondalik1 = 2;
			sonuc_ondalik2 = 4;
	end
	if (sayi == 151) begin
			sonuc_isareti = 0;
			sonuc_tam = 12;
			sonuc_ondalik1 = 2;
			sonuc_ondalik2 = 8;
	end
	if (sayi == 152) begin
			sonuc_isareti = 0;
			sonuc_tam = 12;
			sonuc_ondalik1 = 3;
			sonuc_ondalik2 = 2;
	end
	if (sayi == 153) begin
			sonuc_isareti = 0;
			sonuc_tam = 12;
			sonuc_ondalik1 = 3;
			sonuc_ondalik2 = 6;
	end
	if (sayi == 154) begin
			sonuc_isareti = 0;
			sonuc_tam = 12;
			sonuc_ondalik1 = 4;
			sonuc_ondalik2 = 0;
	end
	if (sayi == 155) begin
			sonuc_isareti = 0;
			sonuc_tam = 12;
			sonuc_ondalik1 = 4;
			sonuc_ondalik2 = 4;
	end
	if (sayi == 156) begin
			sonuc_isareti = 0;
			sonuc_tam = 12;
			sonuc_ondalik1 = 4;
			sonuc_ondalik2 = 8;
	end
	if (sayi == 157) begin
			sonuc_isareti = 0;
			sonuc_tam = 12;
			sonuc_ondalik1 = 5;
			sonuc_ondalik2 = 2;
	end
	if (sayi == 158) begin
			sonuc_isareti = 0;
			sonuc_tam = 12;
			sonuc_ondalik1 = 5;
			sonuc_ondalik2 = 6;
	end
	if (sayi == 159) begin
			sonuc_isareti = 0;
			sonuc_tam = 12;
			sonuc_ondalik1 = 6;
			sonuc_ondalik2 = 0;
	end
	if (sayi == 160) begin
			sonuc_isareti = 0;
			sonuc_tam = 12;
			sonuc_ondalik1 = 6;
			sonuc_ondalik2 = 4;
	end
	if (sayi == 161) begin
			sonuc_isareti = 0;
			sonuc_tam = 12;
			sonuc_ondalik1 = 6;
			sonuc_ondalik2 = 8;
	end
	if (sayi == 162) begin
			sonuc_isareti = 0;
			sonuc_tam = 12;
			sonuc_ondalik1 = 7;
			sonuc_ondalik2 = 2;
	end
	if (sayi == 163) begin
			sonuc_isareti = 0;
			sonuc_tam = 12;
			sonuc_ondalik1 = 7;
			sonuc_ondalik2 = 6;
	end
	if (sayi == 164) begin
			sonuc_isareti = 0;
			sonuc_tam = 12;
			sonuc_ondalik1 = 8;
			sonuc_ondalik2 = 0;
	end
	if (sayi == 165) begin
			sonuc_isareti = 0;
			sonuc_tam = 12;
			sonuc_ondalik1 = 8;
			sonuc_ondalik2 = 4;
	end
	if (sayi == 166) begin
			sonuc_isareti = 0;
			sonuc_tam = 12;
			sonuc_ondalik1 = 8;
			sonuc_ondalik2 = 8;
	end
	if (sayi == 167) begin
			sonuc_isareti = 0;
			sonuc_tam = 12;
			sonuc_ondalik1 = 9;
			sonuc_ondalik2 = 2;
	end
	if (sayi == 168) begin
			sonuc_isareti = 0;
			sonuc_tam = 12;
			sonuc_ondalik1 = 9;
			sonuc_ondalik2 = 6;
	end
	if (sayi == 169) begin
			sonuc_isareti = 0;
			sonuc_tam = 13;
			sonuc_ondalik1 = 0;
			sonuc_ondalik2 = 0;
	end
	if (sayi == 170) begin
			sonuc_isareti = 0;
			sonuc_tam = 13;
			sonuc_ondalik1 = 0;
			sonuc_ondalik2 = 3;
	end
	if (sayi == 171) begin
			sonuc_isareti = 0;
			sonuc_tam = 13;
			sonuc_ondalik1 = 0;
			sonuc_ondalik2 = 7;
	end
	if (sayi == 172) begin
			sonuc_isareti = 0;
			sonuc_tam = 13;
			sonuc_ondalik1 = 1;
			sonuc_ondalik2 = 1;
	end
	if (sayi == 173) begin
			sonuc_isareti = 0;
			sonuc_tam = 13;
			sonuc_ondalik1 = 1;
			sonuc_ondalik2 = 5;
	end
	if (sayi == 174) begin
			sonuc_isareti = 0;
			sonuc_tam = 13;
			sonuc_ondalik1 = 1;
			sonuc_ondalik2 = 9;
	end
	if (sayi == 175) begin
			sonuc_isareti = 0;
			sonuc_tam = 13;
			sonuc_ondalik1 = 2;
			sonuc_ondalik2 = 2;
	end
	if (sayi == 176) begin
			sonuc_isareti = 0;
			sonuc_tam = 13;
			sonuc_ondalik1 = 2;
			sonuc_ondalik2 = 6;
	end
	if (sayi == 177) begin
			sonuc_isareti = 0;
			sonuc_tam = 13;
			sonuc_ondalik1 = 3;
			sonuc_ondalik2 = 0;
	end
	if (sayi == 178) begin
			sonuc_isareti = 0;
			sonuc_tam = 13;
			sonuc_ondalik1 = 3;
			sonuc_ondalik2 = 4;
	end
	if (sayi == 179) begin
			sonuc_isareti = 0;
			sonuc_tam = 13;
			sonuc_ondalik1 = 3;
			sonuc_ondalik2 = 7;
	end
	if (sayi == 180) begin
			sonuc_isareti = 0;
			sonuc_tam = 13;
			sonuc_ondalik1 = 4;
			sonuc_ondalik2 = 1;
	end
	if (sayi == 181) begin
			sonuc_isareti = 0;
			sonuc_tam = 13;
			sonuc_ondalik1 = 4;
			sonuc_ondalik2 = 5;
	end
	if (sayi == 182) begin
			sonuc_isareti = 0;
			sonuc_tam = 13;
			sonuc_ondalik1 = 4;
			sonuc_ondalik2 = 9;
	end
	if (sayi == 183) begin
			sonuc_isareti = 0;
			sonuc_tam = 13;
			sonuc_ondalik1 = 5;
			sonuc_ondalik2 = 2;
	end
	if (sayi == 184) begin
			sonuc_isareti = 0;
			sonuc_tam = 13;
			sonuc_ondalik1 = 5;
			sonuc_ondalik2 = 6;
	end
	if (sayi == 185) begin
			sonuc_isareti = 0;
			sonuc_tam = 13;
			sonuc_ondalik1 = 6;
			sonuc_ondalik2 = 0;
	end
	if (sayi == 186) begin
			sonuc_isareti = 0;
			sonuc_tam = 13;
			sonuc_ondalik1 = 6;
			sonuc_ondalik2 = 3;
	end
	if (sayi == 187) begin
			sonuc_isareti = 0;
			sonuc_tam = 13;
			sonuc_ondalik1 = 6;
			sonuc_ondalik2 = 7;
	end
	if (sayi == 188) begin
			sonuc_isareti = 0;
			sonuc_tam = 13;
			sonuc_ondalik1 = 7;
			sonuc_ondalik2 = 1;
	end
	if (sayi == 189) begin
			sonuc_isareti = 0;
			sonuc_tam = 13;
			sonuc_ondalik1 = 7;
			sonuc_ondalik2 = 4;
	end
	if (sayi == 190) begin
			sonuc_isareti = 0;
			sonuc_tam = 13;
			sonuc_ondalik1 = 7;
			sonuc_ondalik2 = 8;
	end
	if (sayi == 191) begin
			sonuc_isareti = 0;
			sonuc_tam = 13;
			sonuc_ondalik1 = 8;
			sonuc_ondalik2 = 2;
	end
	if (sayi == 192) begin
			sonuc_isareti = 0;
			sonuc_tam = 13;
			sonuc_ondalik1 = 8;
			sonuc_ondalik2 = 5;
	end
	if (sayi == 193) begin
			sonuc_isareti = 0;
			sonuc_tam = 13;
			sonuc_ondalik1 = 8;
			sonuc_ondalik2 = 9;
	end
	if (sayi == 194) begin
			sonuc_isareti = 0;
			sonuc_tam = 13;
			sonuc_ondalik1 = 9;
			sonuc_ondalik2 = 2;
	end
	if (sayi == 195) begin
			sonuc_isareti = 0;
			sonuc_tam = 13;
			sonuc_ondalik1 = 9;
			sonuc_ondalik2 = 6;
	end
	if (sayi == 196) begin
			sonuc_isareti = 0;
			sonuc_tam = 14;
			sonuc_ondalik1 = 0;
			sonuc_ondalik2 = 0;
	end
	if (sayi == 197) begin
			sonuc_isareti = 0;
			sonuc_tam = 14;
			sonuc_ondalik1 = 0;
			sonuc_ondalik2 = 3;
	end
	if (sayi == 198) begin
			sonuc_isareti = 0;
			sonuc_tam = 14;
			sonuc_ondalik1 = 0;
			sonuc_ondalik2 = 7;
	end
	if (sayi == 199) begin
			sonuc_isareti = 0;
			sonuc_tam = 14;
			sonuc_ondalik1 = 1;
			sonuc_ondalik2 = 0;
	end
	if (sayi == 200) begin
			sonuc_isareti = 0;
			sonuc_tam = 14;
			sonuc_ondalik1 = 1;
			sonuc_ondalik2 = 4;
	end
	if (sayi == 201) begin
			sonuc_isareti = 0;
			sonuc_tam = 14;
			sonuc_ondalik1 = 1;
			sonuc_ondalik2 = 7;
	end
	if (sayi == 202) begin
			sonuc_isareti = 0;
			sonuc_tam = 14;
			sonuc_ondalik1 = 2;
			sonuc_ondalik2 = 1;
	end
	if (sayi == 203) begin
			sonuc_isareti = 0;
			sonuc_tam = 14;
			sonuc_ondalik1 = 2;
			sonuc_ondalik2 = 4;
	end
	if (sayi == 204) begin
			sonuc_isareti = 0;
			sonuc_tam = 14;
			sonuc_ondalik1 = 2;
			sonuc_ondalik2 = 8;
	end
	if (sayi == 205) begin
			sonuc_isareti = 0;
			sonuc_tam = 14;
			sonuc_ondalik1 = 3;
			sonuc_ondalik2 = 1;
	end
	if (sayi == 206) begin
			sonuc_isareti = 0;
			sonuc_tam = 14;
			sonuc_ondalik1 = 3;
			sonuc_ondalik2 = 5;
	end
	if (sayi == 207) begin
			sonuc_isareti = 0;
			sonuc_tam = 14;
			sonuc_ondalik1 = 3;
			sonuc_ondalik2 = 8;
	end
	if (sayi == 208) begin
			sonuc_isareti = 0;
			sonuc_tam = 14;
			sonuc_ondalik1 = 4;
			sonuc_ondalik2 = 2;
	end
	if (sayi == 209) begin
			sonuc_isareti = 0;
			sonuc_tam = 14;
			sonuc_ondalik1 = 4;
			sonuc_ondalik2 = 5;
	end
	if (sayi == 210) begin
			sonuc_isareti = 0;
			sonuc_tam = 14;
			sonuc_ondalik1 = 4;
			sonuc_ondalik2 = 9;
	end
	if (sayi == 211) begin
			sonuc_isareti = 0;
			sonuc_tam = 14;
			sonuc_ondalik1 = 5;
			sonuc_ondalik2 = 2;
	end
	if (sayi == 212) begin
			sonuc_isareti = 0;
			sonuc_tam = 14;
			sonuc_ondalik1 = 5;
			sonuc_ondalik2 = 6;
	end
	if (sayi == 213) begin
			sonuc_isareti = 0;
			sonuc_tam = 14;
			sonuc_ondalik1 = 5;
			sonuc_ondalik2 = 9;
	end
	if (sayi == 214) begin
			sonuc_isareti = 0;
			sonuc_tam = 14;
			sonuc_ondalik1 = 6;
			sonuc_ondalik2 = 2;
	end
	if (sayi == 215) begin
			sonuc_isareti = 0;
			sonuc_tam = 14;
			sonuc_ondalik1 = 6;
			sonuc_ondalik2 = 6;
	end
	if (sayi == 216) begin
			sonuc_isareti = 0;
			sonuc_tam = 14;
			sonuc_ondalik1 = 6;
			sonuc_ondalik2 = 9;
	end
	if (sayi == 217) begin
			sonuc_isareti = 0;
			sonuc_tam = 14;
			sonuc_ondalik1 = 7;
			sonuc_ondalik2 = 3;
	end
	if (sayi == 218) begin
			sonuc_isareti = 0;
			sonuc_tam = 14;
			sonuc_ondalik1 = 7;
			sonuc_ondalik2 = 6;
	end
	if (sayi == 219) begin
			sonuc_isareti = 0;
			sonuc_tam = 14;
			sonuc_ondalik1 = 7;
			sonuc_ondalik2 = 9;
	end
	if (sayi == 220) begin
			sonuc_isareti = 0;
			sonuc_tam = 14;
			sonuc_ondalik1 = 8;
			sonuc_ondalik2 = 3;
	end
	if (sayi == 221) begin
			sonuc_isareti = 0;
			sonuc_tam = 14;
			sonuc_ondalik1 = 8;
			sonuc_ondalik2 = 6;
	end
	if (sayi == 222) begin
			sonuc_isareti = 0;
			sonuc_tam = 14;
			sonuc_ondalik1 = 8;
			sonuc_ondalik2 = 9;
	end
	if (sayi == 223) begin
			sonuc_isareti = 0;
			sonuc_tam = 14;
			sonuc_ondalik1 = 9;
			sonuc_ondalik2 = 3;
	end
	if (sayi == 224) begin
			sonuc_isareti = 0;
			sonuc_tam = 14;
			sonuc_ondalik1 = 9;
			sonuc_ondalik2 = 6;
	end
	if (sayi == 225) begin
			sonuc_isareti = 0;
			sonuc_tam = 15;
			sonuc_ondalik1 = 0;
			sonuc_ondalik2 = 0;
	end
	if (sayi == 226) begin
			sonuc_isareti = 0;
			sonuc_tam = 15;
			sonuc_ondalik1 = 0;
			sonuc_ondalik2 = 3;
	end
	if (sayi == 227) begin
			sonuc_isareti = 0;
			sonuc_tam = 15;
			sonuc_ondalik1 = 0;
			sonuc_ondalik2 = 6;
	end
	if (sayi == 228) begin
			sonuc_isareti = 0;
			sonuc_tam = 15;
			sonuc_ondalik1 = 0;
			sonuc_ondalik2 = 9;
	end
	if (sayi == 229) begin
			sonuc_isareti = 0;
			sonuc_tam = 15;
			sonuc_ondalik1 = 1;
			sonuc_ondalik2 = 3;
	end
	if (sayi == 230) begin
			sonuc_isareti = 0;
			sonuc_tam = 15;
			sonuc_ondalik1 = 1;
			sonuc_ondalik2 = 6;
	end
	if (sayi == 231) begin
			sonuc_isareti = 0;
			sonuc_tam = 15;
			sonuc_ondalik1 = 1;
			sonuc_ondalik2 = 9;
	end
	if (sayi == 232) begin
			sonuc_isareti = 0;
			sonuc_tam = 15;
			sonuc_ondalik1 = 2;
			sonuc_ondalik2 = 3;
	end
	if (sayi == 233) begin
			sonuc_isareti = 0;
			sonuc_tam = 15;
			sonuc_ondalik1 = 2;
			sonuc_ondalik2 = 6;
	end
	if (sayi == 234) begin
			sonuc_isareti = 0;
			sonuc_tam = 15;
			sonuc_ondalik1 = 2;
			sonuc_ondalik2 = 9;
	end
	if (sayi == 235) begin
			sonuc_isareti = 0;
			sonuc_tam = 15;
			sonuc_ondalik1 = 3;
			sonuc_ondalik2 = 2;
	end
	if (sayi == 236) begin
			sonuc_isareti = 0;
			sonuc_tam = 15;
			sonuc_ondalik1 = 3;
			sonuc_ondalik2 = 6;
	end
	if (sayi == 237) begin
			sonuc_isareti = 0;
			sonuc_tam = 15;
			sonuc_ondalik1 = 3;
			sonuc_ondalik2 = 9;
	end
	if (sayi == 238) begin
			sonuc_isareti = 0;
			sonuc_tam = 15;
			sonuc_ondalik1 = 4;
			sonuc_ondalik2 = 2;
	end
	if (sayi == 239) begin
			sonuc_isareti = 0;
			sonuc_tam = 15;
			sonuc_ondalik1 = 4;
			sonuc_ondalik2 = 5;
	end
	if (sayi == 240) begin
			sonuc_isareti = 0;
			sonuc_tam = 15;
			sonuc_ondalik1 = 4;
			sonuc_ondalik2 = 9;
	end
	if (sayi == 241) begin
			sonuc_isareti = 0;
			sonuc_tam = 15;
			sonuc_ondalik1 = 5;
			sonuc_ondalik2 = 2;
	end
	if (sayi == 242) begin
			sonuc_isareti = 0;
			sonuc_tam = 15;
			sonuc_ondalik1 = 5;
			sonuc_ondalik2 = 5;
	end
	if (sayi == 243) begin
			sonuc_isareti = 0;
			sonuc_tam = 15;
			sonuc_ondalik1 = 5;
			sonuc_ondalik2 = 8;
	end
	if (sayi == 244) begin
			sonuc_isareti = 0;
			sonuc_tam = 15;
			sonuc_ondalik1 = 6;
			sonuc_ondalik2 = 2;
	end
	if (sayi == 245) begin
			sonuc_isareti = 0;
			sonuc_tam = 15;
			sonuc_ondalik1 = 6;
			sonuc_ondalik2 = 5;
	end
	if (sayi == 246) begin
			sonuc_isareti = 0;
			sonuc_tam = 15;
			sonuc_ondalik1 = 6;
			sonuc_ondalik2 = 8;
	end
	if (sayi == 247) begin
			sonuc_isareti = 0;
			sonuc_tam = 15;
			sonuc_ondalik1 = 7;
			sonuc_ondalik2 = 1;
	end
	if (sayi == 248) begin
			sonuc_isareti = 0;
			sonuc_tam = 15;
			sonuc_ondalik1 = 7;
			sonuc_ondalik2 = 4;
	end
	if (sayi == 249) begin
			sonuc_isareti = 0;
			sonuc_tam = 15;
			sonuc_ondalik1 = 7;
			sonuc_ondalik2 = 7;
	end
	if (sayi == 250) begin
			sonuc_isareti = 0;
			sonuc_tam = 15;
			sonuc_ondalik1 = 8;
			sonuc_ondalik2 = 1;
	end
	if (sayi == 251) begin
			sonuc_isareti = 0;
			sonuc_tam = 15;
			sonuc_ondalik1 = 8;
			sonuc_ondalik2 = 4;
	end
	if (sayi == 252) begin
			sonuc_isareti = 0;
			sonuc_tam = 15;
			sonuc_ondalik1 = 8;
			sonuc_ondalik2 = 7;
	end
	if (sayi == 253) begin
			sonuc_isareti = 0;
			sonuc_tam = 15;
			sonuc_ondalik1 = 9;
			sonuc_ondalik2 = 0;
	end
	if (sayi == 254) begin
			sonuc_isareti = 0;
			sonuc_tam = 15;
			sonuc_ondalik1 = 9;
			sonuc_ondalik2 = 3;
	end
	if (sayi == 255) begin
			sonuc_isareti = 0;
			sonuc_tam = 15;
			sonuc_ondalik1 = 9;
			sonuc_ondalik2 = 6;
	end
	if (sayi == 256) begin
			sonuc_isareti = 0;
			sonuc_tam = 16;
			sonuc_ondalik1 = 0;
			sonuc_ondalik2 = 0;
	end
	if (sayi == 257) begin
			sonuc_isareti = 0;
			sonuc_tam = 16;
			sonuc_ondalik1 = 0;
			sonuc_ondalik2 = 3;
	end
	if (sayi == 258) begin
			sonuc_isareti = 0;
			sonuc_tam = 16;
			sonuc_ondalik1 = 0;
			sonuc_ondalik2 = 6;
	end
	if (sayi == 259) begin
			sonuc_isareti = 0;
			sonuc_tam = 16;
			sonuc_ondalik1 = 0;
			sonuc_ondalik2 = 9;
	end
	if (sayi == 260) begin
			sonuc_isareti = 0;
			sonuc_tam = 16;
			sonuc_ondalik1 = 1;
			sonuc_ondalik2 = 2;
	end
	if (sayi == 261) begin
			sonuc_isareti = 0;
			sonuc_tam = 16;
			sonuc_ondalik1 = 1;
			sonuc_ondalik2 = 5;
	end
	if (sayi == 262) begin
			sonuc_isareti = 0;
			sonuc_tam = 16;
			sonuc_ondalik1 = 1;
			sonuc_ondalik2 = 8;
	end
	if (sayi == 263) begin
			sonuc_isareti = 0;
			sonuc_tam = 16;
			sonuc_ondalik1 = 2;
			sonuc_ondalik2 = 1;
	end
	if (sayi == 264) begin
			sonuc_isareti = 0;
			sonuc_tam = 16;
			sonuc_ondalik1 = 2;
			sonuc_ondalik2 = 4;
	end
	if (sayi == 265) begin
			sonuc_isareti = 0;
			sonuc_tam = 16;
			sonuc_ondalik1 = 2;
			sonuc_ondalik2 = 7;
	end
	if (sayi == 266) begin
			sonuc_isareti = 0;
			sonuc_tam = 16;
			sonuc_ondalik1 = 3;
			sonuc_ondalik2 = 0;
	end
	if (sayi == 267) begin
			sonuc_isareti = 0;
			sonuc_tam = 16;
			sonuc_ondalik1 = 3;
			sonuc_ondalik2 = 4;
	end
	if (sayi == 268) begin
			sonuc_isareti = 0;
			sonuc_tam = 16;
			sonuc_ondalik1 = 3;
			sonuc_ondalik2 = 7;
	end
	if (sayi == 269) begin
			sonuc_isareti = 0;
			sonuc_tam = 16;
			sonuc_ondalik1 = 4;
			sonuc_ondalik2 = 0;
	end
	if (sayi == 270) begin
			sonuc_isareti = 0;
			sonuc_tam = 16;
			sonuc_ondalik1 = 4;
			sonuc_ondalik2 = 3;
	end
	if (sayi == 271) begin
			sonuc_isareti = 0;
			sonuc_tam = 16;
			sonuc_ondalik1 = 4;
			sonuc_ondalik2 = 6;
	end
	if (sayi == 272) begin
			sonuc_isareti = 0;
			sonuc_tam = 16;
			sonuc_ondalik1 = 4;
			sonuc_ondalik2 = 9;
	end
	if (sayi == 273) begin
			sonuc_isareti = 0;
			sonuc_tam = 16;
			sonuc_ondalik1 = 5;
			sonuc_ondalik2 = 2;
	end
	if (sayi == 274) begin
			sonuc_isareti = 0;
			sonuc_tam = 16;
			sonuc_ondalik1 = 5;
			sonuc_ondalik2 = 5;
	end
	if (sayi == 275) begin
			sonuc_isareti = 0;
			sonuc_tam = 16;
			sonuc_ondalik1 = 5;
			sonuc_ondalik2 = 8;
	end
	if (sayi == 276) begin
			sonuc_isareti = 0;
			sonuc_tam = 16;
			sonuc_ondalik1 = 6;
			sonuc_ondalik2 = 1;
	end
	if (sayi == 277) begin
			sonuc_isareti = 0;
			sonuc_tam = 16;
			sonuc_ondalik1 = 6;
			sonuc_ondalik2 = 4;
	end
	if (sayi == 278) begin
			sonuc_isareti = 0;
			sonuc_tam = 16;
			sonuc_ondalik1 = 6;
			sonuc_ondalik2 = 7;
	end
	if (sayi == 279) begin
			sonuc_isareti = 0;
			sonuc_tam = 16;
			sonuc_ondalik1 = 7;
			sonuc_ondalik2 = 0;
	end
	if (sayi == 280) begin
			sonuc_isareti = 0;
			sonuc_tam = 16;
			sonuc_ondalik1 = 7;
			sonuc_ondalik2 = 3;
	end
	if (sayi == 281) begin
			sonuc_isareti = 0;
			sonuc_tam = 16;
			sonuc_ondalik1 = 7;
			sonuc_ondalik2 = 6;
	end
	if (sayi == 282) begin
			sonuc_isareti = 0;
			sonuc_tam = 16;
			sonuc_ondalik1 = 7;
			sonuc_ondalik2 = 9;
	end
	if (sayi == 283) begin
			sonuc_isareti = 0;
			sonuc_tam = 16;
			sonuc_ondalik1 = 8;
			sonuc_ondalik2 = 2;
	end
	if (sayi == 284) begin
			sonuc_isareti = 0;
			sonuc_tam = 16;
			sonuc_ondalik1 = 8;
			sonuc_ondalik2 = 5;
	end
	if (sayi == 285) begin
			sonuc_isareti = 0;
			sonuc_tam = 16;
			sonuc_ondalik1 = 8;
			sonuc_ondalik2 = 8;
	end
	if (sayi == 286) begin
			sonuc_isareti = 0;
			sonuc_tam = 16;
			sonuc_ondalik1 = 9;
			sonuc_ondalik2 = 1;
	end
	if (sayi == 287) begin
			sonuc_isareti = 0;
			sonuc_tam = 16;
			sonuc_ondalik1 = 9;
			sonuc_ondalik2 = 4;
	end
	if (sayi == 288) begin
			sonuc_isareti = 0;
			sonuc_tam = 16;
			sonuc_ondalik1 = 9;
			sonuc_ondalik2 = 7;
	end
	if (sayi == 289) begin
			sonuc_isareti = 0;
			sonuc_tam = 17;
			sonuc_ondalik1 = 0;
			sonuc_ondalik2 = 0;
	end
	if (sayi == 290) begin
			sonuc_isareti = 0;
			sonuc_tam = 17;
			sonuc_ondalik1 = 0;
			sonuc_ondalik2 = 2;
	end
	if (sayi == 291) begin
			sonuc_isareti = 0;
			sonuc_tam = 17;
			sonuc_ondalik1 = 0;
			sonuc_ondalik2 = 5;
	end
	if (sayi == 292) begin
			sonuc_isareti = 0;
			sonuc_tam = 17;
			sonuc_ondalik1 = 0;
			sonuc_ondalik2 = 8;
	end
	if (sayi == 293) begin
			sonuc_isareti = 0;
			sonuc_tam = 17;
			sonuc_ondalik1 = 1;
			sonuc_ondalik2 = 1;
	end
	if (sayi == 294) begin
			sonuc_isareti = 0;
			sonuc_tam = 17;
			sonuc_ondalik1 = 1;
			sonuc_ondalik2 = 4;
	end
	if (sayi == 295) begin
			sonuc_isareti = 0;
			sonuc_tam = 17;
			sonuc_ondalik1 = 1;
			sonuc_ondalik2 = 7;
	end
	if (sayi == 296) begin
			sonuc_isareti = 0;
			sonuc_tam = 17;
			sonuc_ondalik1 = 2;
			sonuc_ondalik2 = 0;
	end
	if (sayi == 297) begin
			sonuc_isareti = 0;
			sonuc_tam = 17;
			sonuc_ondalik1 = 2;
			sonuc_ondalik2 = 3;
	end
	if (sayi == 298) begin
			sonuc_isareti = 0;
			sonuc_tam = 17;
			sonuc_ondalik1 = 2;
			sonuc_ondalik2 = 6;
	end
	if (sayi == 299) begin
			sonuc_isareti = 0;
			sonuc_tam = 17;
			sonuc_ondalik1 = 2;
			sonuc_ondalik2 = 9;
	end
	if (sayi == 300) begin
			sonuc_isareti = 0;
			sonuc_tam = 17;
			sonuc_ondalik1 = 3;
			sonuc_ondalik2 = 2;
	end
	if (sayi == 301) begin
			sonuc_isareti = 0;
			sonuc_tam = 17;
			sonuc_ondalik1 = 3;
			sonuc_ondalik2 = 4;
	end
	if (sayi == 302) begin
			sonuc_isareti = 0;
			sonuc_tam = 17;
			sonuc_ondalik1 = 3;
			sonuc_ondalik2 = 7;
	end
	if (sayi == 303) begin
			sonuc_isareti = 0;
			sonuc_tam = 17;
			sonuc_ondalik1 = 4;
			sonuc_ondalik2 = 0;
	end
	if (sayi == 304) begin
			sonuc_isareti = 0;
			sonuc_tam = 17;
			sonuc_ondalik1 = 4;
			sonuc_ondalik2 = 3;
	end
	if (sayi == 305) begin
			sonuc_isareti = 0;
			sonuc_tam = 17;
			sonuc_ondalik1 = 4;
			sonuc_ondalik2 = 6;
	end
	if (sayi == 306) begin
			sonuc_isareti = 0;
			sonuc_tam = 17;
			sonuc_ondalik1 = 4;
			sonuc_ondalik2 = 9;
	end
	if (sayi == 307) begin
			sonuc_isareti = 0;
			sonuc_tam = 17;
			sonuc_ondalik1 = 5;
			sonuc_ondalik2 = 2;
	end
	if (sayi == 308) begin
			sonuc_isareti = 0;
			sonuc_tam = 17;
			sonuc_ondalik1 = 5;
			sonuc_ondalik2 = 4;
	end
	if (sayi == 309) begin
			sonuc_isareti = 0;
			sonuc_tam = 17;
			sonuc_ondalik1 = 5;
			sonuc_ondalik2 = 7;
	end
	if (sayi == 310) begin
			sonuc_isareti = 0;
			sonuc_tam = 17;
			sonuc_ondalik1 = 6;
			sonuc_ondalik2 = 0;
	end
	if (sayi == 311) begin
			sonuc_isareti = 0;
			sonuc_tam = 17;
			sonuc_ondalik1 = 6;
			sonuc_ondalik2 = 3;
	end
	if (sayi == 312) begin
			sonuc_isareti = 0;
			sonuc_tam = 17;
			sonuc_ondalik1 = 6;
			sonuc_ondalik2 = 6;
	end
	if (sayi == 313) begin
			sonuc_isareti = 0;
			sonuc_tam = 17;
			sonuc_ondalik1 = 6;
			sonuc_ondalik2 = 9;
	end
	if (sayi == 314) begin
			sonuc_isareti = 0;
			sonuc_tam = 17;
			sonuc_ondalik1 = 7;
			sonuc_ondalik2 = 2;
	end
	if (sayi == 315) begin
			sonuc_isareti = 0;
			sonuc_tam = 17;
			sonuc_ondalik1 = 7;
			sonuc_ondalik2 = 4;
	end
	if (sayi == 316) begin
			sonuc_isareti = 0;
			sonuc_tam = 17;
			sonuc_ondalik1 = 7;
			sonuc_ondalik2 = 7;
	end
	if (sayi == 317) begin
			sonuc_isareti = 0;
			sonuc_tam = 17;
			sonuc_ondalik1 = 8;
			sonuc_ondalik2 = 0;
	end
	if (sayi == 318) begin
			sonuc_isareti = 0;
			sonuc_tam = 17;
			sonuc_ondalik1 = 8;
			sonuc_ondalik2 = 3;
	end
	if (sayi == 319) begin
			sonuc_isareti = 0;
			sonuc_tam = 17;
			sonuc_ondalik1 = 8;
			sonuc_ondalik2 = 6;
	end
	if (sayi == 320) begin
			sonuc_isareti = 0;
			sonuc_tam = 17;
			sonuc_ondalik1 = 8;
			sonuc_ondalik2 = 8;
	end
	if (sayi == 321) begin
			sonuc_isareti = 0;
			sonuc_tam = 17;
			sonuc_ondalik1 = 9;
			sonuc_ondalik2 = 1;
	end
	if (sayi == 322) begin
			sonuc_isareti = 0;
			sonuc_tam = 17;
			sonuc_ondalik1 = 9;
			sonuc_ondalik2 = 4;
	end
	if (sayi == 323) begin
			sonuc_isareti = 0;
			sonuc_tam = 17;
			sonuc_ondalik1 = 9;
			sonuc_ondalik2 = 7;
	end
	if (sayi == 324) begin
			sonuc_isareti = 0;
			sonuc_tam = 18;
			sonuc_ondalik1 = 0;
			sonuc_ondalik2 = 0;
	end
	if (sayi == 325) begin
			sonuc_isareti = 0;
			sonuc_tam = 18;
			sonuc_ondalik1 = 0;
			sonuc_ondalik2 = 2;
	end
	if (sayi == 326) begin
			sonuc_isareti = 0;
			sonuc_tam = 18;
			sonuc_ondalik1 = 0;
			sonuc_ondalik2 = 5;
	end
	if (sayi == 327) begin
			sonuc_isareti = 0;
			sonuc_tam = 18;
			sonuc_ondalik1 = 0;
			sonuc_ondalik2 = 8;
	end
	if (sayi == 328) begin
			sonuc_isareti = 0;
			sonuc_tam = 18;
			sonuc_ondalik1 = 1;
			sonuc_ondalik2 = 1;
	end
	if (sayi == 329) begin
			sonuc_isareti = 0;
			sonuc_tam = 18;
			sonuc_ondalik1 = 1;
			sonuc_ondalik2 = 3;
	end
	if (sayi == 330) begin
			sonuc_isareti = 0;
			sonuc_tam = 18;
			sonuc_ondalik1 = 1;
			sonuc_ondalik2 = 6;
	end
	if (sayi == 331) begin
			sonuc_isareti = 0;
			sonuc_tam = 18;
			sonuc_ondalik1 = 1;
			sonuc_ondalik2 = 9;
	end
	if (sayi == 332) begin
			sonuc_isareti = 0;
			sonuc_tam = 18;
			sonuc_ondalik1 = 2;
			sonuc_ondalik2 = 2;
	end
	if (sayi == 333) begin
			sonuc_isareti = 0;
			sonuc_tam = 18;
			sonuc_ondalik1 = 2;
			sonuc_ondalik2 = 4;
	end
	if (sayi == 334) begin
			sonuc_isareti = 0;
			sonuc_tam = 18;
			sonuc_ondalik1 = 2;
			sonuc_ondalik2 = 7;
	end
	if (sayi == 335) begin
			sonuc_isareti = 0;
			sonuc_tam = 18;
			sonuc_ondalik1 = 3;
			sonuc_ondalik2 = 0;
	end
	if (sayi == 336) begin
			sonuc_isareti = 0;
			sonuc_tam = 18;
			sonuc_ondalik1 = 3;
			sonuc_ondalik2 = 3;
	end
	if (sayi == 337) begin
			sonuc_isareti = 0;
			sonuc_tam = 18;
			sonuc_ondalik1 = 3;
			sonuc_ondalik2 = 5;
	end
	if (sayi == 338) begin
			sonuc_isareti = 0;
			sonuc_tam = 18;
			sonuc_ondalik1 = 3;
			sonuc_ondalik2 = 8;
	end
	if (sayi == 339) begin
			sonuc_isareti = 0;
			sonuc_tam = 18;
			sonuc_ondalik1 = 4;
			sonuc_ondalik2 = 1;
	end
	if (sayi == 340) begin
			sonuc_isareti = 0;
			sonuc_tam = 18;
			sonuc_ondalik1 = 4;
			sonuc_ondalik2 = 3;
	end
	if (sayi == 341) begin
			sonuc_isareti = 0;
			sonuc_tam = 18;
			sonuc_ondalik1 = 4;
			sonuc_ondalik2 = 6;
	end
	if (sayi == 342) begin
			sonuc_isareti = 0;
			sonuc_tam = 18;
			sonuc_ondalik1 = 4;
			sonuc_ondalik2 = 9;
	end
	if (sayi == 343) begin
			sonuc_isareti = 0;
			sonuc_tam = 18;
			sonuc_ondalik1 = 5;
			sonuc_ondalik2 = 2;
	end
	if (sayi == 344) begin
			sonuc_isareti = 0;
			sonuc_tam = 18;
			sonuc_ondalik1 = 5;
			sonuc_ondalik2 = 4;
	end
	if (sayi == 345) begin
			sonuc_isareti = 0;
			sonuc_tam = 18;
			sonuc_ondalik1 = 5;
			sonuc_ondalik2 = 7;
	end
	if (sayi == 346) begin
			sonuc_isareti = 0;
			sonuc_tam = 18;
			sonuc_ondalik1 = 6;
			sonuc_ondalik2 = 0;
	end
	if (sayi == 347) begin
			sonuc_isareti = 0;
			sonuc_tam = 18;
			sonuc_ondalik1 = 6;
			sonuc_ondalik2 = 2;
	end
	if (sayi == 348) begin
			sonuc_isareti = 0;
			sonuc_tam = 18;
			sonuc_ondalik1 = 6;
			sonuc_ondalik2 = 5;
	end
	if (sayi == 349) begin
			sonuc_isareti = 0;
			sonuc_tam = 18;
			sonuc_ondalik1 = 6;
			sonuc_ondalik2 = 8;
	end
	if (sayi == 350) begin
			sonuc_isareti = 0;
			sonuc_tam = 18;
			sonuc_ondalik1 = 7;
			sonuc_ondalik2 = 0;
	end
	if (sayi == 351) begin
			sonuc_isareti = 0;
			sonuc_tam = 18;
			sonuc_ondalik1 = 7;
			sonuc_ondalik2 = 3;
	end
	if (sayi == 352) begin
			sonuc_isareti = 0;
			sonuc_tam = 18;
			sonuc_ondalik1 = 7;
			sonuc_ondalik2 = 6;
	end
	if (sayi == 353) begin
			sonuc_isareti = 0;
			sonuc_tam = 18;
			sonuc_ondalik1 = 7;
			sonuc_ondalik2 = 8;
	end
	if (sayi == 354) begin
			sonuc_isareti = 0;
			sonuc_tam = 18;
			sonuc_ondalik1 = 8;
			sonuc_ondalik2 = 1;
	end
	if (sayi == 355) begin
			sonuc_isareti = 0;
			sonuc_tam = 18;
			sonuc_ondalik1 = 8;
			sonuc_ondalik2 = 4;
	end
	if (sayi == 356) begin
			sonuc_isareti = 0;
			sonuc_tam = 18;
			sonuc_ondalik1 = 8;
			sonuc_ondalik2 = 6;
	end
	if (sayi == 357) begin
			sonuc_isareti = 0;
			sonuc_tam = 18;
			sonuc_ondalik1 = 8;
			sonuc_ondalik2 = 9;
	end
	if (sayi == 358) begin
			sonuc_isareti = 0;
			sonuc_tam = 18;
			sonuc_ondalik1 = 9;
			sonuc_ondalik2 = 2;
	end
	if (sayi == 359) begin
			sonuc_isareti = 0;
			sonuc_tam = 18;
			sonuc_ondalik1 = 9;
			sonuc_ondalik2 = 4;
	end
	if (sayi == 360) begin
			sonuc_isareti = 0;
			sonuc_tam = 18;
			sonuc_ondalik1 = 9;
			sonuc_ondalik2 = 7;
	end

    end
    
    
endmodule
