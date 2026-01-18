
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name adder_4bit -dir "/home/ise/Xilinx_project/adder_4bit/planAhead_run_1" -part xc6slx9ftg256-3
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "/home/ise/Xilinx_project/adder_4bit/adder_4bit.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {/home/ise/Xilinx_project/adder_4bit} }
set_property target_constrs_file "adder_4bit.ucf" [current_fileset -constrset]
add_files [list {adder_4bit.ucf}] -fileset [get_property constrset [current_run]]
link_design
