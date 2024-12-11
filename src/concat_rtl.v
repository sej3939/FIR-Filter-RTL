
//------> /eda/mentor/Siemens_EDA/Catapult_Synthesis_2023.1_2/Mgc_home/pkgs/siflibs/ccs_out_v1.v 
//------------------------------------------------------------------------------
// Catapult Synthesis - Sample I/O Port Library
//
// Copyright (c) 2003-2015 Mentor Graphics Corp.
//       All Rights Reserved
//
// This document may be used and distributed without restriction provided that
// this copyright statement is not removed from the file and that any derivative
// work contains this copyright notice.
//
// The design information contained in this file is intended to be an example
// of the functionality which the end user may study in preparation for creating
// their own custom interfaces. This design does not necessarily present a 
// complete implementation of the named protocol or standard.
//
//------------------------------------------------------------------------------

module ccs_out_v1 (dat, idat);

  parameter integer rscid = 1;
  parameter integer width = 8;

  output   [width-1:0] dat;
  input    [width-1:0] idat;

  wire     [width-1:0] dat;

  assign dat = idat;

endmodule




//------> /eda/mentor/Siemens_EDA/Catapult_Synthesis_2023.1_2/Mgc_home/pkgs/siflibs/ccs_in_v1.v 
//------------------------------------------------------------------------------
// Catapult Synthesis - Sample I/O Port Library
//
// Copyright (c) 2003-2017 Mentor Graphics Corp.
//       All Rights Reserved
//
// This document may be used and distributed without restriction provided that
// this copyright statement is not removed from the file and that any derivative
// work contains this copyright notice.
//
// The design information contained in this file is intended to be an example
// of the functionality which the end user may study in preparation for creating
// their own custom interfaces. This design does not necessarily present a 
// complete implementation of the named protocol or standard.
//
//------------------------------------------------------------------------------


module ccs_in_v1 (idat, dat);

  parameter integer rscid = 1;
  parameter integer width = 8;

  output [width-1:0] idat;
  input  [width-1:0] dat;

  wire   [width-1:0] idat;

  assign idat = dat;

endmodule


//------> /eda/mentor/Siemens_EDA/Catapult_Synthesis_2023.1_2/Mgc_home/pkgs/siflibs/mgc_io_sync_v2.v 
//------------------------------------------------------------------------------
// Catapult Synthesis - Sample I/O Port Library
//
// Copyright (c) 2003-2017 Mentor Graphics Corp.
//       All Rights Reserved
//
// This document may be used and distributed without restriction provided that
// this copyright statement is not removed from the file and that any derivative
// work contains this copyright notice.
//
// The design information contained in this file is intended to be an example
// of the functionality which the end user may study in preparation for creating
// their own custom interfaces. This design does not necessarily present a 
// complete implementation of the named protocol or standard.
//
//------------------------------------------------------------------------------


module mgc_io_sync_v2 (ld, lz);
    parameter valid = 0;

    input  ld;
    output lz;

    wire   lz;

    assign lz = ld;

endmodule


//------> ../td_ccore_solutions/ROM_1i4_1o8_0a640e82974f7eb059cc5f6dd0954603bb_0/rtl.v 
// ----------------------------------------------------------------------
//  HLS HDL:        Verilog Netlister
//  HLS Version:    2023.1_2/1049935 Production Release
//  HLS Date:       Sat Jun 10 10:53:51 PDT 2023
// 
//  Generated by:   sj3939@hansolo.poly.edu
//  Generated date: Wed Dec 11 14:33:59 2024
// ----------------------------------------------------------------------

// 
// ------------------------------------------------------------------
//  Design Unit:    ROM_1i4_1o8_0a640e82974f7eb059cc5f6dd0954603bb
// ------------------------------------------------------------------


module ROM_1i4_1o8_0a640e82974f7eb059cc5f6dd0954603bb (
  I_1, O_1
);
  input [3:0] I_1;
  output [7:0] O_1;


  wire[2:0] Shift_Accum_Loop_else_Shift_Accum_Loop_else_mux_nl;
  wire[3:0] Shift_Accum_Loop_else_Shift_Accum_Loop_else_mux_1_nl;

  // Interconnect Declarations for Component Instantiations 
  assign Shift_Accum_Loop_else_Shift_Accum_Loop_else_mux_nl = MUX_v_3_14_2x0(3'b000,
      3'b101, 3'b000, 3'b001, 3'b000, 3'b110, 3'b110, 3'b000, 3'b001, 3'b000, 3'b101,
      3'b000, 3'b010, I_1);
  assign Shift_Accum_Loop_else_Shift_Accum_Loop_else_mux_1_nl = MUX_v_4_14_2x0(4'b0000,
      4'b0001, 4'b0000, 4'b0101, 4'b0000, 4'b0100, 4'b0100, 4'b0000, 4'b0101, 4'b0000,
      4'b0001, 4'b0000, 4'b1011, I_1);
  assign O_1 = {Shift_Accum_Loop_else_Shift_Accum_Loop_else_mux_nl , 1'b0 , Shift_Accum_Loop_else_Shift_Accum_Loop_else_mux_1_nl};

  function automatic [2:0] MUX_v_3_14_2x0;
    input [2:0] input_1;
    input [2:0] input_2;
    input [2:0] input_3;
    input [2:0] input_4;
    input [2:0] input_5;
    input [2:0] input_6;
    input [2:0] input_7;
    input [2:0] input_8;
    input [2:0] input_9;
    input [2:0] input_10;
    input [2:0] input_11;
    input [2:0] input_12;
    input [2:0] input_13;
    input [3:0] sel;
    reg [2:0] result;
  begin
    case (sel)
      4'b0001 : begin
        result = input_1;
      end
      4'b0010 : begin
        result = input_2;
      end
      4'b0011 : begin
        result = input_3;
      end
      4'b0100 : begin
        result = input_4;
      end
      4'b0101 : begin
        result = input_5;
      end
      4'b0110 : begin
        result = input_6;
      end
      4'b0111 : begin
        result = input_7;
      end
      4'b1000 : begin
        result = input_8;
      end
      4'b1001 : begin
        result = input_9;
      end
      4'b1010 : begin
        result = input_10;
      end
      4'b1011 : begin
        result = input_11;
      end
      4'b1100 : begin
        result = input_12;
      end
      default : begin
        result = input_13;
      end
    endcase
    MUX_v_3_14_2x0 = result;
  end
  endfunction


  function automatic [3:0] MUX_v_4_14_2x0;
    input [3:0] input_1;
    input [3:0] input_2;
    input [3:0] input_3;
    input [3:0] input_4;
    input [3:0] input_5;
    input [3:0] input_6;
    input [3:0] input_7;
    input [3:0] input_8;
    input [3:0] input_9;
    input [3:0] input_10;
    input [3:0] input_11;
    input [3:0] input_12;
    input [3:0] input_13;
    input [3:0] sel;
    reg [3:0] result;
  begin
    case (sel)
      4'b0001 : begin
        result = input_1;
      end
      4'b0010 : begin
        result = input_2;
      end
      4'b0011 : begin
        result = input_3;
      end
      4'b0100 : begin
        result = input_4;
      end
      4'b0101 : begin
        result = input_5;
      end
      4'b0110 : begin
        result = input_6;
      end
      4'b0111 : begin
        result = input_7;
      end
      4'b1000 : begin
        result = input_8;
      end
      4'b1001 : begin
        result = input_9;
      end
      4'b1010 : begin
        result = input_10;
      end
      4'b1011 : begin
        result = input_11;
      end
      4'b1100 : begin
        result = input_12;
      end
      default : begin
        result = input_13;
      end
    endcase
    MUX_v_4_14_2x0 = result;
  end
  endfunction

endmodule




//------> ./rtl.v 
// ----------------------------------------------------------------------
//  HLS HDL:        Verilog Netlister
//  HLS Version:    2023.1_2/1049935 Production Release
//  HLS Date:       Sat Jun 10 10:53:51 PDT 2023
// 
//  Generated by:   sj3939@hansolo.poly.edu
//  Generated date: Wed Dec 11 14:34:09 2024
// ----------------------------------------------------------------------

// 
// ------------------------------------------------------------------
//  Design Unit:    fir_core_core_fsm
//  FSM Module
// ------------------------------------------------------------------


module fir_core_core_fsm (
  clk, rst, fsm_output, Shift_Accum_Loop_C_6_tr0
);
  input clk;
  input rst;
  output [8:0] fsm_output;
  reg [8:0] fsm_output;
  input Shift_Accum_Loop_C_6_tr0;


  // FSM State Type Declaration for fir_core_core_fsm_1
  parameter
    main_C_0 = 4'd0,
    Shift_Accum_Loop_C_0 = 4'd1,
    Shift_Accum_Loop_C_1 = 4'd2,
    Shift_Accum_Loop_C_2 = 4'd3,
    Shift_Accum_Loop_C_3 = 4'd4,
    Shift_Accum_Loop_C_4 = 4'd5,
    Shift_Accum_Loop_C_5 = 4'd6,
    Shift_Accum_Loop_C_6 = 4'd7,
    main_C_1 = 4'd8;

  reg [3:0] state_var;
  reg [3:0] state_var_NS;


  // Interconnect Declarations for Component Instantiations 
  always @(*)
  begin : fir_core_core_fsm_1
    case (state_var)
      Shift_Accum_Loop_C_0 : begin
        fsm_output = 9'b000000010;
        state_var_NS = Shift_Accum_Loop_C_1;
      end
      Shift_Accum_Loop_C_1 : begin
        fsm_output = 9'b000000100;
        state_var_NS = Shift_Accum_Loop_C_2;
      end
      Shift_Accum_Loop_C_2 : begin
        fsm_output = 9'b000001000;
        state_var_NS = Shift_Accum_Loop_C_3;
      end
      Shift_Accum_Loop_C_3 : begin
        fsm_output = 9'b000010000;
        state_var_NS = Shift_Accum_Loop_C_4;
      end
      Shift_Accum_Loop_C_4 : begin
        fsm_output = 9'b000100000;
        state_var_NS = Shift_Accum_Loop_C_5;
      end
      Shift_Accum_Loop_C_5 : begin
        fsm_output = 9'b001000000;
        state_var_NS = Shift_Accum_Loop_C_6;
      end
      Shift_Accum_Loop_C_6 : begin
        fsm_output = 9'b010000000;
        if ( Shift_Accum_Loop_C_6_tr0 ) begin
          state_var_NS = main_C_1;
        end
        else begin
          state_var_NS = Shift_Accum_Loop_C_0;
        end
      end
      main_C_1 : begin
        fsm_output = 9'b100000000;
        state_var_NS = main_C_0;
      end
      // main_C_0
      default : begin
        fsm_output = 9'b000000001;
        state_var_NS = Shift_Accum_Loop_C_0;
      end
    endcase
  end

  always @(posedge clk) begin
    if ( rst ) begin
      state_var <= main_C_0;
    end
    else begin
      state_var <= state_var_NS;
    end
  end

endmodule

// ------------------------------------------------------------------
//  Design Unit:    fir_core
// ------------------------------------------------------------------


module fir_core (
  clk, rst, y_rsc_dat, y_triosy_lz, x_rsc_dat, x_triosy_lz
);
  input clk;
  input rst;
  output [7:0] y_rsc_dat;
  output y_triosy_lz;
  input [7:0] x_rsc_dat;
  output x_triosy_lz;


  // Interconnect Declarations
  reg [7:0] y_rsci_idat;
  wire [7:0] x_rsci_idat;
  wire [8:0] fsm_output;
  wire [4:0] Shift_Accum_Loop_acc_1_tmp;
  wire [5:0] nl_Shift_Accum_Loop_acc_1_tmp;
  reg [3:0] i_4_0_sva_3_0;
  reg i_4_0_sva_1_4;
  reg reg_x_triosy_obj_ld_cse;
  wire reg_y_and_cse;
  wire or_tmp_26;
  reg [7:0] shift_reg_0_lpi_2;
  reg [7:0] shift_reg_6_lpi_2;
  reg [7:0] shift_reg_7_lpi_2;
  reg [7:0] shift_reg_5_lpi_2;
  reg [7:0] shift_reg_8_lpi_2;
  reg [7:0] shift_reg_4_lpi_2;
  reg [7:0] shift_reg_9_lpi_2;
  reg [7:0] shift_reg_3_lpi_2;
  reg [7:0] shift_reg_10_lpi_2;
  reg [7:0] shift_reg_2_lpi_2;
  reg [7:0] shift_reg_11_lpi_2;
  reg [7:0] shift_reg_1_lpi_2;
  reg [7:0] shift_reg_12_lpi_2;
  reg [7:0] x_sva;
  reg [7:0] acc_sva;
  wire [7:0] Shift_Accum_Loop_else_Shift_Accum_Loop_else_slc_shift_reg_8_7_0_1_cse_sva_1;
  wire [7:0] ROM_1i4_1o8_deff130825d590f78a2784406781dab92f_1;
  wire [3:0] Shift_Accum_Loop_else_acc_1_tmp;
  wire [4:0] nl_Shift_Accum_Loop_else_acc_1_tmp;
  wire nand_cse;
  wire nor_9_cse;
  wire or_cse;

  wire[7:0] Shift_Accum_Loop_else_acc_nl;
  wire[8:0] nl_Shift_Accum_Loop_else_acc_nl;
  wire[5:0] Shift_Accum_Loop_else_mux_4_nl;
  wire[5:0] Shift_Accum_Loop_if_acc_9_nl;
  wire[6:0] nl_Shift_Accum_Loop_if_acc_9_nl;
  wire[1:0] Shift_Accum_Loop_if_acc_10_nl;
  wire[2:0] nl_Shift_Accum_Loop_if_acc_10_nl;
  wire[7:0] Shift_Accum_Loop_else_mux_5_nl;
  wire[7:0] Shift_Accum_Loop_else_mul_1_nl;
  wire signed [15:0] nl_Shift_Accum_Loop_else_mul_1_nl;
  wire[7:0] Shift_Accum_Loop_if_acc_11_nl;
  wire[8:0] nl_Shift_Accum_Loop_if_acc_11_nl;
  wire acc_not_nl;

  // Interconnect Declarations for Component Instantiations 
  ccs_out_v1 #(.rscid(32'sd1),
  .width(32'sd8)) y_rsci (
      .idat(y_rsci_idat),
      .dat(y_rsc_dat)
    );
  ccs_in_v1 #(.rscid(32'sd2),
  .width(32'sd8)) x_rsci (
      .dat(x_rsc_dat),
      .idat(x_rsci_idat)
    );
  mgc_io_sync_v2 #(.valid(32'sd0)) y_triosy_obj (
      .ld(reg_x_triosy_obj_ld_cse),
      .lz(y_triosy_lz)
    );
  mgc_io_sync_v2 #(.valid(32'sd0)) x_triosy_obj (
      .ld(reg_x_triosy_obj_ld_cse),
      .lz(x_triosy_lz)
    );
  ROM_1i4_1o8_0a640e82974f7eb059cc5f6dd0954603bb  U_ROM_1i4_1o8_deff130825d590f78a2784406781dab92f_rg
      (
      .I_1(i_4_0_sva_3_0),
      .O_1(ROM_1i4_1o8_deff130825d590f78a2784406781dab92f_1)
    );
  fir_core_core_fsm fir_core_core_fsm_inst (
      .clk(clk),
      .rst(rst),
      .fsm_output(fsm_output),
      .Shift_Accum_Loop_C_6_tr0(i_4_0_sva_1_4)
    );
  assign or_cse = (fsm_output[8]) | (fsm_output[0]);
  assign nor_9_cse = ~((i_4_0_sva_3_0[0]) | (i_4_0_sva_3_0[2]));
  assign nand_cse = ~((Shift_Accum_Loop_else_acc_1_tmp[1:0]==2'b11));
  assign reg_y_and_cse = i_4_0_sva_1_4 & (fsm_output[7]);
  assign nl_Shift_Accum_Loop_else_acc_1_tmp = i_4_0_sva_3_0 + 4'b1111;
  assign Shift_Accum_Loop_else_acc_1_tmp = nl_Shift_Accum_Loop_else_acc_1_tmp[3:0];
  assign Shift_Accum_Loop_else_Shift_Accum_Loop_else_slc_shift_reg_8_7_0_1_cse_sva_1
      = MUX_v_8_13_2(shift_reg_0_lpi_2, shift_reg_1_lpi_2, shift_reg_2_lpi_2, shift_reg_3_lpi_2,
      shift_reg_4_lpi_2, shift_reg_5_lpi_2, shift_reg_6_lpi_2, shift_reg_7_lpi_2,
      shift_reg_8_lpi_2, shift_reg_9_lpi_2, shift_reg_10_lpi_2, shift_reg_11_lpi_2,
      shift_reg_12_lpi_2, Shift_Accum_Loop_else_acc_1_tmp);
  assign nl_Shift_Accum_Loop_acc_1_tmp = conv_u2s_4_5(i_4_0_sva_3_0) + 5'b11111;
  assign Shift_Accum_Loop_acc_1_tmp = nl_Shift_Accum_Loop_acc_1_tmp[4:0];
  assign or_tmp_26 = (i_4_0_sva_3_0==4'b0000) & (fsm_output[1]);
  always @(posedge clk) begin
    if ( rst ) begin
      x_sva <= 8'b00000000;
    end
    else if ( or_cse ) begin
      x_sva <= x_rsci_idat;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      acc_sva <= 8'b00000000;
    end
    else if ( (fsm_output[0]) | (fsm_output[8]) | (fsm_output[1]) ) begin
      acc_sva <= MUX_v_8_2_2(8'b00000000, Shift_Accum_Loop_else_acc_nl, acc_not_nl);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      i_4_0_sva_3_0 <= 4'b0000;
    end
    else if ( or_cse | (fsm_output[1]) ) begin
      i_4_0_sva_3_0 <= MUX_v_4_2_2(4'b1101, (Shift_Accum_Loop_acc_1_tmp[3:0]), fsm_output[1]);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      shift_reg_0_lpi_2 <= 8'b00000000;
    end
    else if ( (i_4_0_sva_3_0==4'b0000) & (fsm_output[1]) ) begin
      shift_reg_0_lpi_2 <= x_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      shift_reg_1_lpi_2 <= 8'b00000000;
    end
    else if ( (~((~((Shift_Accum_Loop_else_acc_1_tmp!=4'b0001))) | (i_4_0_sva_3_0[1])))
        & (i_4_0_sva_3_0[0]) & (~ (i_4_0_sva_3_0[2])) & (fsm_output[1]) & (~ (i_4_0_sva_3_0[3]))
        ) begin
      shift_reg_1_lpi_2 <= Shift_Accum_Loop_else_Shift_Accum_Loop_else_slc_shift_reg_8_7_0_1_cse_sva_1;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      shift_reg_2_lpi_2 <= 8'b00000000;
    end
    else if ( ((Shift_Accum_Loop_else_acc_1_tmp!=4'b0010)) & (i_4_0_sva_3_0[1]) &
        nor_9_cse & (fsm_output[1]) & (~ (i_4_0_sva_3_0[3])) ) begin
      shift_reg_2_lpi_2 <= Shift_Accum_Loop_else_Shift_Accum_Loop_else_slc_shift_reg_8_7_0_1_cse_sva_1;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      shift_reg_3_lpi_2 <= 8'b00000000;
    end
    else if ( ((Shift_Accum_Loop_else_acc_1_tmp[3:2]!=2'b00) | nand_cse) & (i_4_0_sva_3_0[2:0]==3'b011)
        & (fsm_output[1]) & (~ (i_4_0_sva_3_0[3])) ) begin
      shift_reg_3_lpi_2 <= Shift_Accum_Loop_else_Shift_Accum_Loop_else_slc_shift_reg_8_7_0_1_cse_sva_1;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      shift_reg_4_lpi_2 <= 8'b00000000;
    end
    else if ( (~((~((Shift_Accum_Loop_else_acc_1_tmp!=4'b0100))) | (i_4_0_sva_3_0[1])))
        & (~ (i_4_0_sva_3_0[0])) & (i_4_0_sva_3_0[2]) & (fsm_output[1]) & (~ (i_4_0_sva_3_0[3]))
        ) begin
      shift_reg_4_lpi_2 <= Shift_Accum_Loop_else_Shift_Accum_Loop_else_slc_shift_reg_8_7_0_1_cse_sva_1;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      shift_reg_5_lpi_2 <= 8'b00000000;
    end
    else if ( (~((~((Shift_Accum_Loop_else_acc_1_tmp!=4'b0101))) | (i_4_0_sva_3_0[1])))
        & (i_4_0_sva_3_0[0]) & (i_4_0_sva_3_0[2]) & (fsm_output[1]) & (~ (i_4_0_sva_3_0[3]))
        ) begin
      shift_reg_5_lpi_2 <= Shift_Accum_Loop_else_Shift_Accum_Loop_else_slc_shift_reg_8_7_0_1_cse_sva_1;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      shift_reg_6_lpi_2 <= 8'b00000000;
    end
    else if ( ((Shift_Accum_Loop_else_acc_1_tmp!=4'b0110)) & (i_4_0_sva_3_0[2:0]==3'b110)
        & (fsm_output[1]) & (~ (i_4_0_sva_3_0[3])) ) begin
      shift_reg_6_lpi_2 <= Shift_Accum_Loop_else_Shift_Accum_Loop_else_slc_shift_reg_8_7_0_1_cse_sva_1;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      shift_reg_7_lpi_2 <= 8'b00000000;
    end
    else if ( ((Shift_Accum_Loop_else_acc_1_tmp[3:2]!=2'b01) | nand_cse) & (i_4_0_sva_3_0[2:0]==3'b111)
        & (fsm_output[1]) & (~ (i_4_0_sva_3_0[3])) ) begin
      shift_reg_7_lpi_2 <= Shift_Accum_Loop_else_Shift_Accum_Loop_else_slc_shift_reg_8_7_0_1_cse_sva_1;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      shift_reg_8_lpi_2 <= 8'b00000000;
    end
    else if ( (~((~((Shift_Accum_Loop_else_acc_1_tmp!=4'b1000))) | (i_4_0_sva_3_0[1])))
        & nor_9_cse & (fsm_output[1]) & (i_4_0_sva_3_0[3]) ) begin
      shift_reg_8_lpi_2 <= Shift_Accum_Loop_else_Shift_Accum_Loop_else_slc_shift_reg_8_7_0_1_cse_sva_1;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      shift_reg_9_lpi_2 <= 8'b00000000;
    end
    else if ( (~((~((Shift_Accum_Loop_else_acc_1_tmp!=4'b1001))) | (i_4_0_sva_3_0[1])))
        & (i_4_0_sva_3_0[0]) & (~ (i_4_0_sva_3_0[2])) & (fsm_output[1]) & (i_4_0_sva_3_0[3])
        ) begin
      shift_reg_9_lpi_2 <= Shift_Accum_Loop_else_Shift_Accum_Loop_else_slc_shift_reg_8_7_0_1_cse_sva_1;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      shift_reg_10_lpi_2 <= 8'b00000000;
    end
    else if ( ((Shift_Accum_Loop_else_acc_1_tmp!=4'b1010)) & (i_4_0_sva_3_0[1]) &
        nor_9_cse & (fsm_output[1]) & (i_4_0_sva_3_0[3]) ) begin
      shift_reg_10_lpi_2 <= Shift_Accum_Loop_else_Shift_Accum_Loop_else_slc_shift_reg_8_7_0_1_cse_sva_1;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      shift_reg_11_lpi_2 <= 8'b00000000;
    end
    else if ( ((Shift_Accum_Loop_else_acc_1_tmp[3:2]!=2'b10) | nand_cse) & (i_4_0_sva_3_0[2:0]==3'b011)
        & (fsm_output[1]) & (i_4_0_sva_3_0[3]) ) begin
      shift_reg_11_lpi_2 <= Shift_Accum_Loop_else_Shift_Accum_Loop_else_slc_shift_reg_8_7_0_1_cse_sva_1;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      shift_reg_12_lpi_2 <= 8'b00000000;
    end
    else if ( (~((~((Shift_Accum_Loop_else_acc_1_tmp!=4'b1100))) | (i_4_0_sva_3_0[1])))
        & (~ (i_4_0_sva_3_0[0])) & (i_4_0_sva_3_0[2]) & (i_4_0_sva_3_0[3]) & (fsm_output[1])
        ) begin
      shift_reg_12_lpi_2 <= Shift_Accum_Loop_else_Shift_Accum_Loop_else_slc_shift_reg_8_7_0_1_cse_sva_1;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      y_rsci_idat <= 8'b00000000;
    end
    else if ( reg_y_and_cse ) begin
      y_rsci_idat <= acc_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      reg_x_triosy_obj_ld_cse <= 1'b0;
    end
    else begin
      reg_x_triosy_obj_ld_cse <= reg_y_and_cse;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      i_4_0_sva_1_4 <= 1'b0;
    end
    else if ( fsm_output[1] ) begin
      i_4_0_sva_1_4 <= Shift_Accum_Loop_acc_1_tmp[4];
    end
  end
  assign nl_Shift_Accum_Loop_if_acc_10_nl = (x_sva[3:2]) + (x_sva[1:0]);
  assign Shift_Accum_Loop_if_acc_10_nl = nl_Shift_Accum_Loop_if_acc_10_nl[1:0];
  assign nl_Shift_Accum_Loop_if_acc_9_nl = ({Shift_Accum_Loop_if_acc_10_nl , (x_sva[1:0])
      , 2'b01}) + (acc_sva[7:2]);
  assign Shift_Accum_Loop_if_acc_9_nl = nl_Shift_Accum_Loop_if_acc_9_nl[5:0];
  assign Shift_Accum_Loop_else_mux_4_nl = MUX_v_6_2_2((acc_sva[7:2]), Shift_Accum_Loop_if_acc_9_nl,
      or_tmp_26);
  assign nl_Shift_Accum_Loop_else_mul_1_nl = $signed(Shift_Accum_Loop_else_Shift_Accum_Loop_else_slc_shift_reg_8_7_0_1_cse_sva_1)
      * $signed(({(ROM_1i4_1o8_deff130825d590f78a2784406781dab92f_1[7:5]) , 1'b0
      , (ROM_1i4_1o8_deff130825d590f78a2784406781dab92f_1[3:0])}));
  assign Shift_Accum_Loop_else_mul_1_nl = nl_Shift_Accum_Loop_else_mul_1_nl[7:0];
  assign nl_Shift_Accum_Loop_if_acc_11_nl = (~ x_sva) + ({(~ (x_sva[5:0])) , 2'b01});
  assign Shift_Accum_Loop_if_acc_11_nl = nl_Shift_Accum_Loop_if_acc_11_nl[7:0];
  assign Shift_Accum_Loop_else_mux_5_nl = MUX_v_8_2_2(Shift_Accum_Loop_else_mul_1_nl,
      Shift_Accum_Loop_if_acc_11_nl, or_tmp_26);
  assign nl_Shift_Accum_Loop_else_acc_nl = ({Shift_Accum_Loop_else_mux_4_nl , (acc_sva[1:0])})
      + Shift_Accum_Loop_else_mux_5_nl;
  assign Shift_Accum_Loop_else_acc_nl = nl_Shift_Accum_Loop_else_acc_nl[7:0];
  assign acc_not_nl = ~ or_cse;

  function automatic [3:0] MUX_v_4_2_2;
    input [3:0] input_0;
    input [3:0] input_1;
    input  sel;
    reg [3:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_4_2_2 = result;
  end
  endfunction


  function automatic [5:0] MUX_v_6_2_2;
    input [5:0] input_0;
    input [5:0] input_1;
    input  sel;
    reg [5:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_6_2_2 = result;
  end
  endfunction


  function automatic [7:0] MUX_v_8_13_2;
    input [7:0] input_0;
    input [7:0] input_1;
    input [7:0] input_2;
    input [7:0] input_3;
    input [7:0] input_4;
    input [7:0] input_5;
    input [7:0] input_6;
    input [7:0] input_7;
    input [7:0] input_8;
    input [7:0] input_9;
    input [7:0] input_10;
    input [7:0] input_11;
    input [7:0] input_12;
    input [3:0] sel;
    reg [7:0] result;
  begin
    case (sel)
      4'b0000 : begin
        result = input_0;
      end
      4'b0001 : begin
        result = input_1;
      end
      4'b0010 : begin
        result = input_2;
      end
      4'b0011 : begin
        result = input_3;
      end
      4'b0100 : begin
        result = input_4;
      end
      4'b0101 : begin
        result = input_5;
      end
      4'b0110 : begin
        result = input_6;
      end
      4'b0111 : begin
        result = input_7;
      end
      4'b1000 : begin
        result = input_8;
      end
      4'b1001 : begin
        result = input_9;
      end
      4'b1010 : begin
        result = input_10;
      end
      4'b1011 : begin
        result = input_11;
      end
      default : begin
        result = input_12;
      end
    endcase
    MUX_v_8_13_2 = result;
  end
  endfunction


  function automatic [7:0] MUX_v_8_2_2;
    input [7:0] input_0;
    input [7:0] input_1;
    input  sel;
    reg [7:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_8_2_2 = result;
  end
  endfunction


  function automatic [4:0] conv_u2s_4_5 ;
    input [3:0]  vector ;
  begin
    conv_u2s_4_5 =  {1'b0, vector};
  end
  endfunction

endmodule

// ------------------------------------------------------------------
//  Design Unit:    tt_um_fir
// ------------------------------------------------------------------


module tt_um_fir (
  input  wire [7:0] ui_in,    // Dedicated inputs
  output wire [7:0] uo_out,   // Dedicated outputs
  input  wire [7:0] uio_in,   // IOs: Input path
  output wire [7:0] uio_out,  // IOs: Output path
  output wire [7:0] uio_oe,   // IOs: Enable path (active high: 0=input, 1=output)
  input  wire       ena,      // always 1 when the design is powered, so you can ignore it
  input  wire       clk,      // clock
  input  wire       rst_n     // reset_n - low to reset
);

  // Interconnect Declarations for Component Instantiations 
  fir_core fir_core_inst (
      .clk(clk),
      .rst(~rst_n),
      .y_rsc_dat(uo_out),
      .y_triosy_lz(),
      .x_rsc_dat(ui_in),
      .x_triosy_lz();
    );

  assign uo_out = 8'b00000000;
  assign uio_oe = 8'b00000000;
endmodule



