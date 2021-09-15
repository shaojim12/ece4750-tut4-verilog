//========================================================================
// MinMaxUnit
//========================================================================
// This module takes two inputs, compares them, and outputs the larger
// via the "max" output port and the smaller via the "min" output port.

`ifndef TUT4_VERILOG_SORT_MIN_MAX_UNIT_V
`define TUT4_VERILOG_SORT_MIN_MAX_UNIT_V

module tut4_verilog_sort_MinMaxUnit
#(
  parameter p_nbits = 1
)(
  input  logic [p_nbits-1:0] in0,
  input  logic [p_nbits-1:0] in1,
  output logic [p_nbits-1:0] out_min,
  output logic [p_nbits-1:0] out_max
);

  // ''' TUTORIAL TASK '''''''''''''''''''''''''''''''''''''''''''''''''''
  // This model is incomplete. As part of the tutorial you will insert
  // logic here to implement the min/max unit. You should also write a
  // unit test from scratch named MinMaxUnit_test.py.
  // '''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
  logic [p_nbits-1:0] in0_next;
  logic [p_nbits-1:0] in1_next;
  always_comb begin
    if ( in0 <= in1 ) begin
      in0_next = in0;
      in1_next = in1;
    end
    else if ( in0 > in1 ) begin
      in0_next = in1;
      in1_next = in0;
    end
    else begin
      in0_next = 'x;
      in1_next = 'x;
    end
  end

  assign out_min = in0_next;
  assign out_max = in1_next;


endmodule

`endif /* TUT4_VERILOG_SORT_MIN_MAX_UNIT_V */

