module xor2(input a, input b, output y);
  wire n1, n2, n3, n4;
  not2(.a(a), .y(n1));
  or2(.a(n1), .b(b), .y(n2)); 
  not2(.a(b), .y(n3));
  or2(.a(a), .b(n3), .y(n4)); 
  and2(.a(n2), .b(n4), .y(y));  
endmodule
