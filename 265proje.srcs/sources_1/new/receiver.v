`timescale 1ns / 1ps

module receiver(
    input clk, //input clock
    input reset, //input reset 
    input RxD, //input receving data line
    output reg [3:0] an, // anode signals of the 7-segment LED display
    output reg [6:0] seg, // cathode patterns of the 7-segment LED display
    output [7:0]RxData // output for 8 bits data
    // output [7:0]LED // output 8 LEDs
    );
    
    //internal variables
    reg shift; // shift signal to trigger shifting data
    reg state, nextstate; // initial state and next state variable
    reg [3:0] bitcounter; // 4 bits counter to count up to 9 for UART receiving
    reg [1:0] samplecounter; // 2 bits sample counter to count up to 4 for oversampling
    reg [13:0] counter; // 14 bits counter to count the baud rate
    reg [9:0] rxshiftreg; //bit shifting register
    reg clear_bitcounter,inc_bitcounter,inc_samplecounter,clear_samplecounter; //clear or increment the counter
    
    // constants
    parameter clk_freq = 100_000_000;  // system clock frequency
    parameter baud_rate = 9_600; //baud rate
    parameter div_sample = 4; //oversampling
    parameter div_counter = clk_freq/(baud_rate*div_sample);  // this is the number we have to divide the system clock frequency to get a frequency (div_sample) time higher than (baud_rate)
    parameter mid_sample = (div_sample/2);  // this is the middle point of a bit where you want to sample it
    parameter div_bit = 10; // 1 start, 8 data, 1 stop
    
    assign RxData = rxshiftreg [8:1]; // assign the RxData from the shiftregister
    reg [1:0] durum = 2'd0;
    reg [8:0] sayi = 9'd0;
    reg [7:0] islem_kodu;
    
    wire cikti_isareti_asal;
    wire [4:0] cikti_tam_asal;
    wire [3:0] cikti_ondalik1_asal, cikti_ondalik2_asal;
    
    wire cikti_isareti_cos;
    wire [4:0] cikti_tam_cos;
    wire [3:0] cikti_ondalik1_cos, cikti_ondalik2_cos;
    
    wire cikti_isareti_karekok;
    wire [4:0] cikti_tam_karekok;
    wire [3:0] cikti_ondalik1_karekok, cikti_ondalik2_karekok;
    
    wire cikti_isareti_sin;
    wire [4:0] cikti_tam_sin;
    wire [3:0] cikti_ondalik1_sin, cikti_ondalik2_sin;
    
    reg [15:0] cikti = 14'd1770;
    
    prime_number_calc a(sayi, cikti_isareti_asal, cikti_tam_asal, cikti_ondalik1_asal, cikti_ondalik2_asal);
    sin_cos_calc c(sayi, 0, cikti_isareti_cos, cikti_tam_cos, cikti_ondalik1_cos, cikti_ondalik2_cos);
    sin_cos_calc s(sayi, 1, cikti_isareti_sin, cikti_tam_sin, cikti_ondalik1_sin, cikti_ondalik2_sin);
    sqrt_calc k(sayi, cikti_isareti_karekok, cikti_tam_karekok, cikti_ondalik1_karekok, cikti_ondalik2_karekok);
    
    
    always @(RxData) begin
        if (durum == 2'b00) begin
            if(RxData <= 8'd57 && RxData >= 8'd48) begin
                sayi = RxData - 6'd48;
                durum = 2'b01;
            end
        end else if (durum == 2'b01) begin
            if(RxData <= 8'd57 && RxData >= 8'd48) begin
                sayi = sayi*10 + RxData - 6'd48;
                durum = 2'b01;
            end else begin
                // islem kodu alinacak
                islem_kodu = RxData;
                case (islem_kodu)
                    8'd97: begin // a -> asal_sayi
                        cikti = cikti_tam_asal * 100 + cikti_ondalik1_asal * 10 + cikti_ondalik2_asal;
                    end
                    8'd99: begin // c -> cos
                        cikti = cikti_tam_cos * 100 + cikti_ondalik1_cos * 10 + cikti_ondalik2_cos;
                    end
                    8'd107: begin // k -> karekok
                        cikti = cikti_tam_karekok * 100 + cikti_ondalik1_karekok * 10 + cikti_ondalik2_karekok;
                    end
                    8'd115: begin // s -> sin
                        cikti = cikti_tam_sin * 100 + cikti_ondalik1_sin * 10 + cikti_ondalik2_sin;
                    end
                endcase
                sayi = 9'd0;
                durum = 2'b00;
            end
        end
    end
    
    // reg [26:0] one_second_counter; // counter for generating 1 second clock enable
    // wire one_second_enable;// one second enable for counting numbers
    reg [15:0] displayed_number; // counting number to be displayed
    reg [3:0] LED_BCD;
    reg [19:0] refresh_counter; // 20-bit for creating 10.5ms refresh period or 380Hz refresh rate
    // the first 2 MSB bits for creating 4 LED-activating signals with 2.6ms digit period
    wire [1:0] LED_activating_counter; 
    // count     0    ->  1  ->  2  ->  3
    // activates    LED1    LED2   LED3   LED4
    // and repeat
    
//    always @(posedge clk or posedge reset) begin
//        if (reset==1)
//            one_second_counter <= 0;
//        else begin
//            if (one_second_counter>=99999999) 
//                 one_second_counter <= 0;
//            else
//                one_second_counter <= one_second_counter + 1;
//        end
//    end
    
    // assign one_second_enable = (one_second_counter == 99999999) ? 1 : 0;
    
    always @(posedge clk or posedge reset) begin
        if(reset == 1)
            displayed_number <= 0;
//        else if(one_second_enable == 1)
//            displayed_number <= displayed_number + 1;
    end
    
    always @(posedge clk or posedge reset) begin 
        if(reset == 1)
            refresh_counter <= 0;
        else
            refresh_counter <= refresh_counter + 1;
    end
    
    assign LED_activating_counter = refresh_counter[19:18];
    // anode activating signals for 4 LEDs, digit period of 2.6ms
    // decoder to generate anode signals
    
    always @(*) begin
        case(LED_activating_counter)
        2'b00: begin
            an = 4'b0111; 
            // activate LED1 and Deactivate LED2, LED3, LED4
            LED_BCD = (cikti) / 1000;
            // the first digit of the 16-bit number
              end
        2'b01: begin
            an = 4'b1011; 
            // activate LED2 and Deactivate LED1, LED3, LED4
            LED_BCD = ((cikti) % 1000) / 100;
            // the second digit of the 16-bit number
              end
        2'b10: begin
            an = 4'b1101; 
            // activate LED3 and Deactivate LED2, LED1, LED4
            LED_BCD = (((cikti) % 1000)%100)/10;
            // the third digit of the 16-bit number
                end
        2'b11: begin
            an = 4'b1110; 
            // activate LED4 and Deactivate LED2, LED3, LED1
            LED_BCD = (((cikti) % 1000)%100)%10;
            // the fourth digit of the 16-bit number    
               end
        endcase
    end
    
    // Cathode patterns of the 7-segment LED display 
    always @(*) begin
        case(LED_BCD)
        4'b0000: seg = 7'b0000001; // "0"     
        4'b0001: seg = 7'b1001111; // "1" 
        4'b0010: seg = 7'b0010010; // "2" 
        4'b0011: seg = 7'b0000110; // "3" 
        4'b0100: seg = 7'b1001100; // "4" 
        4'b0101: seg = 7'b0100100; // "5" 
        4'b0110: seg = 7'b0100000; // "6" 
        4'b0111: seg = 7'b0001111; // "7" 
        4'b1000: seg = 7'b0000000; // "8"     
        4'b1001: seg = 7'b0000100; // "9" 
        default: seg = 7'b0000001; // "0"
        endcase
    end
    
    //UART receiver logic
    always @ (posedge clk) begin
            if (reset) begin // if reset is asserted
                state <= 0; // set state to idle
                bitcounter <= 0; // reset the bit counter
                counter <= 0; // reset the counter
                samplecounter <= 0; // reset the sample counter
            end else begin // if reset is not asserted
                counter <= counter + 1; // start count in the counter
                if (counter >= div_counter-1) begin // if counter reach the baud rate with sampling 
                    counter <= 0; //reset the counter
                    state <= nextstate; // assign the state to nextstate
                    if (shift)rxshiftreg <= {RxD,rxshiftreg[9:1]}; //if shift asserted, load the receiving data
                    if (clear_samplecounter) samplecounter <= 0; // if clear sampl counter asserted, reset sample counter
                    if (inc_samplecounter) samplecounter <= samplecounter + 1; //if increment counter asserted, start sample count
                    if (clear_bitcounter) bitcounter <=0; // if clear bit counter asserted, reset bit counter
                    if (inc_bitcounter)bitcounter <= bitcounter + 1; // if increment bit counter asserted, start count bit counter
                end
            end
        end
       
    //state machine
    always @ (posedge clk) begin //trigger by clock
        shift <= 0; // set shift to 0 to avoid any shifting 
        clear_samplecounter <= 0; // set clear sample counter to 0 to avoid reset
        inc_samplecounter <= 0; // set increment sample counter to 0 to avoid any increment
        clear_bitcounter <= 0; // set clear bit counter to 0 to avoid claring
        inc_bitcounter <= 0; // set increment bit counter to avoid any count
        nextstate <= 0; // set next state to be idle state
        case (state)
            0: begin // idle state
                if (RxD) // if input RxD data line asserted
                  begin
                  nextstate <= 0; // back to idle state because RxD needs to be low to start transmission    
                  end
                else begin // if input RxD data line is not asserted
                    nextstate <= 1; //jump to receiving state 
                    clear_bitcounter <= 1; // trigger to clear bit counter
                    clear_samplecounter <= 1; // trigger to clear sample counter
                end
            end
            1: begin // receiving state
                nextstate <= 1; // DEFAULT 
                if (samplecounter == mid_sample - 1) shift <= 1; // if sample counter is 1, trigger shift 
                    if (samplecounter == div_sample - 1) begin // if sample counter is 3 as the sample rate used is 3
                        if (bitcounter == div_bit - 1) begin // check if bit counter if 9 or not
                    nextstate <= 0; // back to idle state if bit counter is 9 as receving is complete
                    end 
                    inc_bitcounter <= 1; // trigger the increment bit counter if bit counter is not 9
                    clear_samplecounter <= 1; //trigger the sample counter to reset the sample counter
                end else inc_samplecounter <= 1; // if sample is not equal to 3, keep counting
            end
           default: nextstate <= 0; //default idle state
         endcase
    end         
endmodule
