
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name CPU -dir "C:/Users/Nikifor Zhao/CPU/planAhead_run_2" -part xc3s1200efg320-4
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/Users/Nikifor Zhao/CPU/CPU.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/Nikifor Zhao/CPU} }
set_property target_constrs_file "CPU.ucf" [current_fileset -constrset]
add_files [list {CPU.ucf}] -fileset [get_property constrset [current_run]]
link_design
