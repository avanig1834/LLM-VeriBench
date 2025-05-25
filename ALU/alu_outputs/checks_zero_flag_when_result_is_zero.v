module alu_tb;
  reg [15:0] a, b;
  wire [15:0] sum;
  wire sign, carry, parity, zero, overflow;

  alu dut(sum, a, b, sign, carry, parity, zero, overflow);

  initial begin
    $monitor("Time=%0t a=%h b=%h sum=%h sign=%b carry=%b parity=%b zero=%b overflow=%b",
             $time, a, b, sum, sign, carry, parity, zero, overflow);

    // Test case 1: Addition with zero result
    a = 16'h0000; b = 16'h0000;
    #10;

    // Test case 2: Addition with non-zero result
    a = 16'h0001; b = 16'h0002;
    #10;

    // Test case 3: Addition with zero result
    a = 16'hFFFF; b = 16'h0001;
    #10;

    // Test case 4: Addition with overflow
    a = 16'h7FFF; b = 16'h0001;
    #10;

    $finish;
  end
endmodule