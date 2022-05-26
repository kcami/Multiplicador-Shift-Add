`timescale 1ns/100ps
module Multiplicador_TB();

	reg Clk;
	reg [3:0] Multiplicando;
	reg [3:0] Multiplicador;
	reg St;
	
	wire Done;
	wire Idle;
	wire [7:0]  Produto;
                        
	Multiplicador DUT (  
		.St(St),
		.Clk(Clk),
		.Multiplicando(Multiplicando),
		.Multiplicador(Multiplicador),
		.Idle(Idle),
		.Done(Done),
		.Produto(Produto)
	);
	
	initial begin
		forever #40 Clk = ~Clk;
	end
	
	initial begin
		Clk = 1;
		St  = 0;
		Multiplicador = 4'b1011;
		Multiplicando = 4'b1101;
		#20;
		St = 1;
		#80;
		St = 0;
		
		#1000;
		Multiplicador = 4'b1111;
		Multiplicando = 4'b1111;
		#30;
		St = 1;
		#80;
		St = 0;
		
		$display("Running testbench");  
	end
	
	initial begin
		#3000 $stop;
	end                                                   
endmodule 