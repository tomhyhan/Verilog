// File: and_gate.v
// This file contains a simple Verilog module for an AND gate
// and a testbench to simulate it.

// Define a simple module for an AND gate.
// 'A' and 'B' are inputs, and 'Out' is the output.
module and_gate (
    input A,
    input B,
    output Out
);

    // Use a continuous assignment to define the gate's behavior.
    // The output 'Out' is continuously assigned the result of 'A' AND 'B'.
    assign Out = A & B;

endmodule

// This is the testbench module. It provides inputs to the 'and_gate'
// and checks the output. It does not have any inputs or outputs itself.
module tb_and_gate;

    // Define the signals that will connect to the 'and_gate' module.
    // 'reg' is used for signals that will be driven inside the testbench.
    reg tb_A;
    reg tb_B;

    // 'wire' is used for signals that will be driven by the module under test.
    wire tb_Out;

    // Define a variable to store the time step.
    // NOTE: 'parameter' must be defined at the module level, not inside 'initial'.
    parameter T_STEP = 10;

    // Instantiate (create an instance of) the 'and_gate' module.
    // The syntax is: module_name instance_name (port_connections).
    and_gate dut (
        .A(tb_A),
        .B(tb_B),
        .Out(tb_Out)
    );

    // This is the initial block. It runs only once at the beginning
    // of the simulation and is used to provide the stimulus (input values).
    initial begin
        // Open the VCD file for waveform viewing.
        $dumpfile("and_gate.vcd");
        // Dump all signals in the current scope for the waveform file.
        $dumpvars(0, tb_and_gate);

        // Apply a sequence of inputs to test the AND gate's behavior.

        // Time 0: Set initial values.
        tb_A = 0;
        tb_B = 0;

        // Wait for 10 time units. The output should be 0.
        #T_STEP;
        // Time 10: Change the inputs.
        tb_A = 0;
        tb_B = 1;

        #T_STEP;
        // Time 20: Change the inputs.
        tb_A = 1;
        tb_B = 0;

        #T_STEP;
        // Time 30: Change the inputs.
        tb_A = 1;
        tb_B = 1;

        #T_STEP;
        // Time 40: End the simulation.
        $finish;
    end
endmodule

