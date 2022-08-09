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
        output reg [4:0] cikti,
        output reg cikti_isareti // 1 -> negatif, 0 -> pozitif
    );
    
    // sin(x) = x - x**3/3! + x**5/5! - x**7/7! + x**9/9!
    // cos(x) = 1 - x**2/2! + x**4/4! - x**6/6! + x**8/8!
    
    reg [4:0] cikti_tam;
    reg [6:0] cikti_ondalik;
    real temp, radyan, sonuc_tam, sonuc_ondalik;
    
    always @(*) begin
        temp = sayi;
        
        // acinin dar aciya donusturulmesi
        if (temp > 90) begin
            if (temp < 180)
                temp = 180 - temp;
            else if (sayi < 270)
                temp = 180 - (360 - temp);
            else
                temp = 360 - sayi;
        end
        $display("temp: %f", temp);
        // isleme gore radyan degerinin belirlenmesi
        radyan = (islem == 1) ? temp * 0.0174532925 : (90 - temp) * 0.0174532925;
        $display("radyan: %f", radyan);
        
        // sonucun hesaplanmasi
        if (islem == 1)
            sonuc_tam = (sayi == 90 || sayi == 270) ? 1 : 0;
        else
            sonuc_tam = (sayi == 0 || sayi == 180 || sayi == 360) ? 1 : 0;
        
        sonuc_ondalik = (radyan - radyan**3/6 + radyan**5/120 - radyan**7/5040) * 1000;
        $display("sonuc_ondalik: %f", sonuc_ondalik);
        
        // cikti degerlerinin atanmasi
        cikti_tam = sonuc_tam;
        cikti_ondalik = (sayi % 90 == 0) ? 0 : sonuc_ondalik / 10;
        
        // isleme ve aci degerine gore ciktinin isaretinin belirlenmesi
        if (islem == 1)
            cikti_isareti = (sayi > 180 && sayi < 360) ? 1 : 0; 
        else
            cikti_isareti = (sayi > 90 && sayi < 270) ? 1 : 0;
            
        cikti = cikti_tam*100 + cikti_ondalik;
    end
endmodule
