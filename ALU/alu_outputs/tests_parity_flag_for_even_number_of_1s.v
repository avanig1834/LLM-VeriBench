module alu_tb;
  reg [15:0] a, b;
  wire [15:0] sum;
  wire sign, carry, parity, zero, overflow;

  alu dut (
    .sum(sum),
    .a(a),
    .b(b),
    .sign(sign),
    .carry(carry),
    .parity(parity),
    .zero(zero),
    .overflow(overflow)
  );

  initial begin
    $monitor("Time=%0t a=%h b=%h sum=%h sign=%b carry=%b parity=%b zero=%b overflow=%b",
             $time, a, b, sum, sign, carry, parity, zero, overflow);

    // Test case 1: Even number of 1s
    a = 16'h5555; b = 16'h5555;
    #10;

    // Test case 2: Odd number of 1s
    a = 16'hAAAA; b = 16'hAAAA;
    #10;

    // Test case 3: All 1s
    a = 16'hFFFF; b = 16'hFFFF;
    #10;

    // Test case 4: All 0s
    a = 16'h0000; b = 16'h0000;
    #10;

    $finish;
  end
endmodule