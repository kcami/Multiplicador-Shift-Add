`timescale 1ns/100ps
module Multiplicador_TB();

	// test vector input registers
	reg Clk;
	reg [3:0] Multiplicando;
	reg [3:0] OperandoMultiplicador;
	reg St;
	// wires                                               
	wire Done;
	wire Idle;
	wire [7:0]  Produto;

	// assign statements (if any)                          
	Multiplicador DUT (
	// port map - connection between master ports and signals/registers   
		.Clk(Clk),
		.Done(Done),
		.Idle(Idle),
		.Multiplicando(Multiplicando),
		.OperandoMultiplicador(OperandoMultiplicador),
		.Produto(Produto),
		.St(St)
	);
	
	initial begin
		forever #40 Clk = ~Clk;
	end
	
	initial begin
		Clk = 0;
		St  = 1;
		OperandoMultiplicador = 4'b1011;
		Multiplicando = 4'b1101;
		#40;
		St = 0;
		
		#1000;
		St  = 1;
		OperandoMultiplicador = 4'b1111;
		Multiplicando = 4'b1111;
		#40;
		St = 0;
		
		$display("Running testbench");  
	end
	
	initial begin
		#2400 $stop;
	end                                                   
endmodule