`timescale 1ns/1ns
module Variable_PWM_tb;
reg [7:0] Dutycycle;
reg clk;
reg reset;
wire [7:0] counter;
wire pwmout;

Variable_PWM dut(.Dutycycle(Dutycycle),.clk(clk), .reset(reset), .counter(counter), .pwmout(pwmout));

initial begin
    $dumpfile("sim.vcd");
    $dumpvars(0,Variable_PWM_tb);
    clk = 1'b1;//To initialise the clock to LOGIC 1 just before the simulation starts
    reset=1'b1;
end

always #10 clk <= ~clk; //Generating a clock of timeperiod 20ns with 50% Duty cycle

//Giving different values for dutycycle (the duration for which the output has to be LOGIC 1)
initial begin
    #2 reset=1'b0;
    #2 Dutycycle = 0;
    #2000 Dutycycle = 10;
    #2000 Dutycycle = 20; 
    #2000 Dutycycle = 30; 
    #2000 Dutycycle = 40; 
    #2000 Dutycycle = 50; 
    #2000 Dutycycle = 60; 
    #2000 Dutycycle = 70; 
    #2000 Dutycycle = 80; 
    #2000 Dutycycle = 90; 
    #2000 $finish; 
end
endmodule
