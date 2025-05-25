module testbench;
  reg [15:0] a, b;
  wire [15:0] sum;
  wire sign, carry, parity, zero, overflow;

  alu dut(sum, a, b, sign, carry, parity, zero, overflow);

  initial begin
    $monitor("Time=%0t a=%b b=%b sum=%b sign=%b carry=%b parity=%b zero=%b overflow=%b",
             $time, a, b, sum, sign, carry, parity, zero, overflow);

    // Test case 1: No overflow
    a = 16'h7FFF; b = 16'h0001;
    #10;

    // Test case 2: Signed overflow
    a = 16'h8000; b = 16'h8000;
    #10;

    // Test case 3: No overflow
    a = 16'hFFFF; b = 16'h0001;
    #10;

    // Test case 4: Signed overflow
    a = 16'h7FFF; b = 16'h0001;
    #10;

    $finish;
  end
endmodule