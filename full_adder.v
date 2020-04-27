module Full_Adder(input X1, X2, Cin,output S, Cout);  
   reg[1:0] temp;
   always @(*)
   begin 
   temp = {1'b0,X1} + {1'b0,X2}+{1'b0,Cin};
   end 
   assign S = temp[0];
   assign Cout = temp[1];
endmodule  
 
// Testbench code of the behavioral code for full adder 

module Testbench_Behavioral_adder();
 reg A,B,Cin;
 wire S,Cout;  

 Full_Adder(.X1(A),.X2(B),.Cin(Cin),.S(S),.Cout(Cout));
 initial begin
   A = 0;
   B = 0;
   Cin = 0;
   #5;
   A = 0;
   B = 0;
   Cin = 1;
   #5;  
   A = 0;
   B = 1;
   Cin = 0;
   #5;
   A = 0;
   B = 1;
   Cin = 1;
   #5;
   A = 1;
   B = 0;
   Cin = 0;
   #5;
   A = 1;
   B = 0;
   Cin = 1;
   #5;
   A = 1;
   B = 1;
   Cin = 0;
   #5;  
   A = 1;
   B = 1;
   Cin = 1;
   #5;  
  end
  endmodule 
