module DFF(D,clk,sync_reset,Q);
input D; // Data input 
input clk; // clock input 
input sync_reset; // synchronous reset 
output reg Q; // output Q 
always @(posedge clk) 
begin
 if(sync_reset==1'b1)
  Q <= 1'b0; 
 else 
  Q <= D; 
end 
endmodule
//testbench
module tb_DFF();
reg D;
reg clk;
reg reset;
wire Q;

DFF dut(D,clk,reset,Q);

initial begin
  clk=0;
     forever #10 clk = ~clk;  
end 
initial begin 
 reset=1;
 D <= 0;
 #100;
 reset=0;
 D <= 1;
 #100;
 D <= 0;
 #100;
 D <= 1;
end 
endmodule
