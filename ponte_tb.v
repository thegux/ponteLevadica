module ponte_tb;
	reg Clock, Reset;
	
	wire [3:0] regis;
	
	ponte UUT (Clock, Reset, regis);
	
	always begin
		#20;
		Clock = ~Clock;
	end
	
	initial begin
		Clock <= 0;
		Reset <= 1;
		
		#20 Reset <= 0;
	end
	
endmodule