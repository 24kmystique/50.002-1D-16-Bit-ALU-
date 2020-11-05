set projDir "C:/Users/liwen/Downloads/Telegram\ Desktop/1D_ALU_commentv4/1D_ALU_commentv3/1D_ALU_workv2_comment/1D_ALU_mihir/work/vivado"
set projName "1D_ALU"
set topName top
set device xc7a35tftg256-1
if {[file exists "$projDir/$projName"]} { file delete -force "$projDir/$projName" }
create_project $projName "$projDir/$projName" -part $device
set_property design_mode RTL [get_filesets sources_1]
set verilogSources [list "C:/Users/liwen/Downloads/Telegram\ Desktop/1D_ALU_commentv4/1D_ALU_commentv3/1D_ALU_workv2_comment/1D_ALU_mihir/work/verilog/au_top_0.v" "C:/Users/liwen/Downloads/Telegram\ Desktop/1D_ALU_commentv4/1D_ALU_commentv3/1D_ALU_workv2_comment/1D_ALU_mihir/work/verilog/value_store_1.v" "C:/Users/liwen/Downloads/Telegram\ Desktop/1D_ALU_commentv4/1D_ALU_commentv3/1D_ALU_workv2_comment/1D_ALU_mihir/work/verilog/counter_2.v" "C:/Users/liwen/Downloads/Telegram\ Desktop/1D_ALU_commentv4/1D_ALU_commentv3/1D_ALU_workv2_comment/1D_ALU_mihir/work/verilog/edge_detector_3.v" "C:/Users/liwen/Downloads/Telegram\ Desktop/1D_ALU_commentv4/1D_ALU_commentv3/1D_ALU_workv2_comment/1D_ALU_mihir/work/verilog/button_conditioner_4.v" "C:/Users/liwen/Downloads/Telegram\ Desktop/1D_ALU_commentv4/1D_ALU_commentv3/1D_ALU_workv2_comment/1D_ALU_mihir/work/verilog/edge_detector_5.v" "C:/Users/liwen/Downloads/Telegram\ Desktop/1D_ALU_commentv4/1D_ALU_commentv3/1D_ALU_workv2_comment/1D_ALU_mihir/work/verilog/alu_6.v" "C:/Users/liwen/Downloads/Telegram\ Desktop/1D_ALU_commentv4/1D_ALU_commentv3/1D_ALU_workv2_comment/1D_ALU_mihir/work/verilog/alu_test_7.v" "C:/Users/liwen/Downloads/Telegram\ Desktop/1D_ALU_commentv4/1D_ALU_commentv3/1D_ALU_workv2_comment/1D_ALU_mihir/work/verilog/reset_conditioner_8.v" "C:/Users/liwen/Downloads/Telegram\ Desktop/1D_ALU_commentv4/1D_ALU_commentv3/1D_ALU_workv2_comment/1D_ALU_mihir/work/verilog/pipeline_9.v" "C:/Users/liwen/Downloads/Telegram\ Desktop/1D_ALU_commentv4/1D_ALU_commentv3/1D_ALU_workv2_comment/1D_ALU_mihir/work/verilog/sixteen_bit_absolute_10.v" "C:/Users/liwen/Downloads/Telegram\ Desktop/1D_ALU_commentv4/1D_ALU_commentv3/1D_ALU_workv2_comment/1D_ALU_mihir/work/verilog/sixteen_bit_adder_11.v" "C:/Users/liwen/Downloads/Telegram\ Desktop/1D_ALU_commentv4/1D_ALU_commentv3/1D_ALU_workv2_comment/1D_ALU_mihir/work/verilog/sixteen_bit_boole_12.v" "C:/Users/liwen/Downloads/Telegram\ Desktop/1D_ALU_commentv4/1D_ALU_commentv3/1D_ALU_workv2_comment/1D_ALU_mihir/work/verilog/sixteen_bit_comparator_13.v" "C:/Users/liwen/Downloads/Telegram\ Desktop/1D_ALU_commentv4/1D_ALU_commentv3/1D_ALU_workv2_comment/1D_ALU_mihir/work/verilog/sixteen_bit_increment_14.v" "C:/Users/liwen/Downloads/Telegram\ Desktop/1D_ALU_commentv4/1D_ALU_commentv3/1D_ALU_workv2_comment/1D_ALU_mihir/work/verilog/sixteen_bit_shifter_15.v" "C:/Users/liwen/Downloads/Telegram\ Desktop/1D_ALU_commentv4/1D_ALU_commentv3/1D_ALU_workv2_comment/1D_ALU_mihir/work/verilog/sixteen_bit_multiply_16.v" "C:/Users/liwen/Downloads/Telegram\ Desktop/1D_ALU_commentv4/1D_ALU_commentv3/1D_ALU_workv2_comment/1D_ALU_mihir/work/verilog/sixteen_bit_modulo_17.v" "C:/Users/liwen/Downloads/Telegram\ Desktop/1D_ALU_commentv4/1D_ALU_commentv3/1D_ALU_workv2_comment/1D_ALU_mihir/work/verilog/sixteen_bit_divide_18.v" "C:/Users/liwen/Downloads/Telegram\ Desktop/1D_ALU_commentv4/1D_ALU_commentv3/1D_ALU_workv2_comment/1D_ALU_mihir/work/verilog/full_adder_19.v" "C:/Users/liwen/Downloads/Telegram\ Desktop/1D_ALU_commentv4/1D_ALU_commentv3/1D_ALU_workv2_comment/1D_ALU_mihir/work/verilog/xor_gate_20.v" "C:/Users/liwen/Downloads/Telegram\ Desktop/1D_ALU_commentv4/1D_ALU_commentv3/1D_ALU_workv2_comment/1D_ALU_mihir/work/verilog/mux_four_21.v" "C:/Users/liwen/Downloads/Telegram\ Desktop/1D_ALU_commentv4/1D_ALU_commentv3/1D_ALU_workv2_comment/1D_ALU_mihir/work/verilog/or_gate_22.v" "C:/Users/liwen/Downloads/Telegram\ Desktop/1D_ALU_commentv4/1D_ALU_commentv3/1D_ALU_workv2_comment/1D_ALU_mihir/work/verilog/sixteen_bit_mux_two_23.v" "C:/Users/liwen/Downloads/Telegram\ Desktop/1D_ALU_commentv4/1D_ALU_commentv3/1D_ALU_workv2_comment/1D_ALU_mihir/work/verilog/and_gate_24.v" "C:/Users/liwen/Downloads/Telegram\ Desktop/1D_ALU_commentv4/1D_ALU_commentv3/1D_ALU_workv2_comment/1D_ALU_mihir/work/verilog/sixteen_bit_and_gate_25.v" "C:/Users/liwen/Downloads/Telegram\ Desktop/1D_ALU_commentv4/1D_ALU_commentv3/1D_ALU_workv2_comment/1D_ALU_mihir/work/verilog/mux_two_26.v" ]
import_files -fileset [get_filesets sources_1] -force -norecurse $verilogSources
set xdcSources [list "C:/Users/liwen/Downloads/Telegram\ Desktop/1D_ALU_commentv4/1D_ALU_commentv3/1D_ALU_workv2_comment/1D_ALU_mihir/work/constraint/alchitry.xdc" "C:/Users/liwen/Downloads/Telegram\ Desktop/1D_ALU_commentv4/1D_ALU_commentv3/1D_ALU_workv2_comment/1D_ALU_mihir/constraint/io_custom.xdc" "C:/Users/liwen/Downloads/Telegram\ Desktop/1D_ALU_commentv4/1D_ALU_commentv3/1D_ALU_workv2_comment/1D_ALU_mihir/work/constraint/io.xdc" ]
read_xdc $xdcSources
set_property STEPS.WRITE_BITSTREAM.ARGS.BIN_FILE true [get_runs impl_1]
update_compile_order -fileset sources_1
launch_runs -runs synth_1 -jobs 8
wait_on_run synth_1
launch_runs impl_1 -to_step write_bitstream -jobs 8
wait_on_run impl_1