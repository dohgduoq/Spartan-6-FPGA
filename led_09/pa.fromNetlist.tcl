
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name led_09 -dir "/home/ise/Xilinx_project/led_09/planAhead_run_1" -part xc6slx9ftg256-3
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "/home/ise/Xilinx_project/led_09/led_09.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {/home/ise/Xilinx_project/led_09} }
set_property target_constrs_file "led_09.ucf" [current_fileset -constrset]
add_files [list {led_09.ucf}] -fileset [get_property constrset [current_run]]
link_design
