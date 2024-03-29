module ProgramCounter(
    clk_i,
	rst_i,
	pc_in_i,
	pc_out_o
);
     
//I/O ports
input           clk_i;
input	        rst_i;  // Q: 這是什麼? reset
input  [64-1:0] pc_in_i;
output [64-1:0] pc_out_o;
 
//Internal Signals
reg    [64-1:0] pc_out_o;
 
//Parameter

    
//Main function
always @(posedge clk_i or negedge rst_i) begin
    if(~rst_i)
	    pc_out_o <= 0;
	else
	    pc_out_o <= pc_in_i;
end

endmodule