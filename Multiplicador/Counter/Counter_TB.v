`timescale 1ns/100ps
module Counter_TB();

	reg Load, Clk;                                       
	wire K;
                      
	Counter DUT (  
		.Load(Load),
		.Clk(Clk),
		.K(K)
	);
	
	initial begin
		forever #40 Clk = ~Clk;
	end
	
	initial begin
		Load = 1;
		Clk = 1;
		$display("Running testbench");  
	end
	
	always begin
		#80;
		Load = 0; 
	end
	
	initial begin
		#1200 $stop;
	end                                                   
endmodule