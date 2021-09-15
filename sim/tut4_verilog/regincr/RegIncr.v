//========================================================================
// Registered Incrementer
//========================================================================
// This is a simple example of a module for a registered incrementer
// which combines a positive edge triggered register with a combinational
// +2 incrementer. We use flat register-transfer-level modeling.

`ifndef TUT4_VERILOG_REGINCR_REG_INCR_V
`define TUT4_VERILOG_REGINCR_REG_INCR_V

module tut4_verilog_regincr_RegIncr
(
  input         clk,
  input         reset,
  input   [7:0] in,
  output  [7:0] out
);

  // Sequential logic

  reg [7:0] reg_out;
  always @( posedge clk ) begin
    if ( reset )
      reg_out <= 0;
    else
      reg_out <= in;
  end

  // ''' TUTORIAL TASK '''''''''''''''''''''''''''''''''''''''''''''''''''
  // This model is incomplete. As part of the tutorial you will insert
  // combinational logic here to model the incrementer logic.
  // '''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
  reg [7:0] temp_wire;
  always @(*) begin
    temp_wire = reg_out + 1;
  end

  assign out = temp_wire;

endmodule

`endif /* TUT4_VERILOG_REGINCR_REG_INCR_V */

