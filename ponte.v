module ponte(Clock, Reset, );
	input Clock, Reset;
	output reg[3:0] regis;
				 
	always @(posedge Clock) begin
		if(Reset) 
			regis <= 0;
		else 
			regis <= regis + 1;
	end
	

endmodule