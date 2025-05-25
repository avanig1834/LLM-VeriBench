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
  end

  initial begin
    // Test case 1: Simple addition
    a = 16'h0005; b = 16'h0003;
    #10;

    // Test case 2: Addition with carry
    a = 16'h000A; b = 16'h0005;
    #10;

    // Test case 3: Addition with overflow
    a = 16'h7FFF; b = 16'h0001;
    #10;

    // Test case 4: Addition with zero result
    a = 16'hFFFF; b = 16'hFFFF;
    #10;

    // Test case 5: Addition with negative result
    a = 16'h8000; b = 16'h8000;
    #10;

    $finish;
  end
endmodule