`timescale 1ns/100ps
module Multiplicador_TB();

	reg Clk;
	reg [3:0] Multiplicando;
	reg [3:0] OperandoMultiplicador;
	reg St;
	
	wire Done;
	wire Idle;
	wire [7:0]  Produto;
                        
	Multiplicador DUT (  
		.St(St),
		.Clk(Clk),
		.Multiplicando(Multiplicando),
		.OperandoMultiplicador(OperandoMultiplicador),
		.Idle(Idle),
		.Done(Done),
		.Produto(Produto)
	);
	
	initial begin
		forever #40 Clk = ~Clk;
	end
	
	initial begin
		Clk = 1;
		St  = 1;
		OperandoMultiplicador = 4'b1011;
		Multiplicando = 4'b1101;
		#80;
		St = 0;
		
		#1000;
		St  = 1;
		OperandoMultiplicador = 4'b1111;
		Multiplicando = 4'b1111;
		#80;
		St = 0;
		
		$display("Running testbench");  
	end
	
	initial begin
		#2400 $stop;
	end                                                   
endmodule