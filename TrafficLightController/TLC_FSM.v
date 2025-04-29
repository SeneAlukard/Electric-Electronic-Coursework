module TLC_FSM(
  input clk,
  input rst,
  input trigger,
  output reg [2:0] bulb
);

  parameter RED = 2'b00;
  parameter RED_YELLOW = 2'b01;
  parameter GREEN = 2'b10;
  parameter YELLOW = 2'b11;

  reg [1:0] ns, ps;

  always@(posedge clk)
    if(rst)
      ps <= RED;
    else if (trigger)
      ps <= ns;

    always@(ps) begin
    ns = ps; //?
    case(ps)
      RED:        begin ns = RED_YELLOW; bulb = 3'b100; end
      RED_YELLOW: begin ns = GREEN; bulb = 3'b110; end
      GREEN:      begin ns = YELLOW; bulb = 3'b001; end
      YELLOW:     begin ns = RED; bulb = 3'b010; end 
    endcase
    end

endmodule
