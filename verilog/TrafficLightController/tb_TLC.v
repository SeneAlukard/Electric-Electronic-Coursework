`timescale 1ns/1ps

//dumpfile etc for iverilog and gtkwave simulation

module tb_TLC;

  reg clk, rst;
  wire [2:0] bulb;

  localparam DELAY = 2;

  TLC #(.delay(DELAY)) myTLC (
    .clk(clk),
    .rst(rst),
    .bulb(bulb)
  );


  initial clk = 0;
  always #5 clk = ~clk;


    // VCD file generation
    initial begin
        $dumpfile("TLC.vcd");
        $dumpvars(0, tb_TLC);
    end
    
    // Test stimulus
    initial begin
        // Initialize inputs

        rst = 1;
        #20;
        rst = 0;

        #10000;
        
        // Finish simulation
        $display("Simulation completed");
        $finish;
    end
    
    // Monitor changes
    initial begin
        $monitor("At time %t: ", $time);
    end
endmodule
