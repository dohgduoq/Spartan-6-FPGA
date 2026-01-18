
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name blink_led -dir "/home/ise/Xilinx_project/blink_led/planAhead_run_1" -part xc6slx9ftg256-3
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "/home/ise/Xilinx_project/blink_led/blink_led.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {/home/ise/Xilinx_project/blink_led} }
set_property target_constrs_file "blink_led.ucf" [current_fileset -constrset]
add_files [list {blink_led.ucf}] -fileset [get_property constrset [current_run]]
link_design
