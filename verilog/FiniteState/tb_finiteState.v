`timescale 1ns/1ps

module tb_finiteState();
    // TODO: Declare inputs and outputs
    
    // Instantiate the Unit Under Test (UUT)
    finiteState uut (
        // TODO: Connect ports
    );
    
    // VCD file generation
    initial begin
        $dumpfile("finiteState.vcd");
        $dumpvars(0, tb_finiteState);
    end
    
    // Test stimulus
    initial begin
        // Initialize inputs
        
        // TODO: Add test cases
        
        // Finish simulation
        $display("Simulation completed");
        $finish;
    end
    
    // Monitor changes
    initial begin
        $monitor("At time %t: ", $time);
    end
endmodule
