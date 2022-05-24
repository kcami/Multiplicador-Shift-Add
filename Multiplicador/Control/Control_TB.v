`timescale 1ns/100ps
module Control_TB();

reg Clk;
reg K;
reg M;
reg St;
                                             
wire Ad;
wire Done;
wire Idle;
wire Load;
wire Sh;

                         
Control DUT (
	.Ad(Ad),
	.Clk(Clk),
	.Done(Done),
	.Idle(Idle),
	.K(K),
	.Load(Load),
	.M(M),
	.Sh(Sh),
	.St(St)
);
initial 
begin 
	Clk = 1'b0;
	K = 1'b0;
	M = 1'b0;
	St = 1'b0;
	#32000 $stop;
end 


always
begin
	Clk = ~Clk;
	#1000;
end 


always
begin
	K = ~K;
	#2000;
end 

always
begin
	M = ~M;
	#4000;
end 


always
begin
	St = ~St;
	#8000;
end 
endmodule