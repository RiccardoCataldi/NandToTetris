module and2(input a, input b, output y);
  wire n1;
  nand2 u0 (.a(a), .b(b), .y(n1));
  not2  u1 (.a(n1), .y(y));        // AND = NOT(NAND(a,b))
endmodule
