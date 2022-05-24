`timescale 1ns/100ps
module Adder_TB();

	// test vector input registers
	reg [3:0] OperandoA;
	reg [3:0] OperandoB;
	
	// wires                                               
	wire [4:0] Soma;

	// assign statements (if any)                          
	Adder DUT (
	// port map - connection between master ports and signals/registers   
		.OperandoA(OperandoA),
		.OperandoB(OperandoB),
		
		.Soma(Soma)
	);
	
	integer i=0;
	
	initial begin
		
		for(i=0;i<16;i=i+1) begin
			OperandoA = $urandom%16;
			OperandoB = $urandom%16;
			#40;
		end
		
		$display("Running testbench");  
	end
	
	initial begin
		#1200 $stop;
	end                                                   
endmodule