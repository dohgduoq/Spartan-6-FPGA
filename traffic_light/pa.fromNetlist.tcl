
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name traffic_light -dir "/home/ise/Xilinx_project/traffic_light/planAhead_run_1" -part xc6slx9ftg256-3
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "/home/ise/Xilinx_project/traffic_light/traffic_light.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {/home/ise/Xilinx_project/traffic_light} }
set_property target_constrs_file "traffic_light.ucf" [current_fileset -constrset]
add_files [list {traffic_light.ucf}] -fileset [get_property constrset [current_run]]
link_design
