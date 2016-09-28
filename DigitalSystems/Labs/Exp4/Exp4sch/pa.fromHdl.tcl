
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name Exp4 -dir "C:/Users/justi_000/Dropbox/Justin/Academia/Current Courses/Digital/Exp4/planAhead_run_2" -part xc3s100etq144-5
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "exp4sch.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {exp4sch.vf}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set_property top exp4sch $srcset
add_files [list {exp4sch.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s100etq144-5
