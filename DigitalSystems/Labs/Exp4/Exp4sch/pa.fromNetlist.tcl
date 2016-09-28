
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name Exp4 -dir "C:/Users/justi_000/Dropbox/Justin/Academia/Current Courses/Digital/Exp4/planAhead_run_3" -part xc3s100etq144-5
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/Users/justi_000/Dropbox/Justin/Academia/Current Courses/Digital/Exp4/exp4sch.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/justi_000/Dropbox/Justin/Academia/Current Courses/Digital/Exp4} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "exp4sch.ucf" [current_fileset -constrset]
add_files [list {exp4sch.ucf}] -fileset [get_property constrset [current_run]]
link_design
