module alu(input [15:0] x, input [15:0] y, input zx,input nx,input zy,input ny,input f,input no,output [15:0] out, output zr,output ng);
    wire [15:0] w1,w2,w3;
    wire [15:0] w4,w5,w6;
    
    // Process x 
    mux16 m1( .a(x), .b(16'b0), .s(zx), .y(w1)); // Zero the x
    not16 n1( .a(w1), .y(w2)); // Not the x
    mux16 m2( .a(w1), .b(w2), .s(nx), .y(w3); // Choose x or notx
    
    // Process y
    mux16 m3( .a(y), .b(16'b0), .s(zy), .y(w4)); // Zero the x
    not16 n2( .a(w4), .y(w5)); // Not the x
    mux16 m4( .a(w4), .b(w5), .s(ny), .y(w6); // Choose x or notx
    
    // Add these wires
    wire [15:0] w7, w8, w9, w10, w11
endmodule
