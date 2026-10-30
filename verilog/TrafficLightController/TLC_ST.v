
module TLC_ST #(parameter delay = 0)(
  input clk,
  input rst,
  output trigger
);

  reg [delay+6:0] c;

  always@(negedge clk)
    if(rst)
      c <= 0;
    else
      c <= c + 1;

  assign trigger = (c == 35 << delay) ||
                   (c == 40 << delay) ||
                   (c == 58 << delay) ||
                   (c == 63 << delay);

endmodule
