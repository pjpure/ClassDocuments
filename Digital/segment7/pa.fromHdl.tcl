
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name segment7 -dir "C:/.Xilinx/segment7/planAhead_run_3" -part xc6slx9tqg144-3
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "C:/.Xilinx/segment7/seg7.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {seg7.vf}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set_property top seg7 $srcset
add_files [list {test.ucf}] -fileset [get_property constrset [current_run]]
add_files [list {seg7.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc6slx9tqg144-3
