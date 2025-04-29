module TLC #(parameter delay= 0)(
  input clk,
  input rst,
  output [2:0] bulb
);

  wire trigger;

  TLC_ST#(.delay(delay)) my_trigger (
    .clk(clk),
    .rst(rst),
    .trigger(trigger)
  );

  TLC_FSM my_fsm (
    .clk(clk),
    .rst(rst),
    .trigger(trigger),
    .bulb(bulb)
  );

endmodule
