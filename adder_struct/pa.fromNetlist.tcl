
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name adder_struct -dir "/mnt/Documents/Projects/verilog/miscellaneous_verilog/adder_struct/planAhead_run_2" -part xc3s200tq144-4
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "/mnt/Documents/Projects/verilog/miscellaneous_verilog/adder_struct/add32.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {/mnt/Documents/Projects/verilog/miscellaneous_verilog/adder_struct} }
set_property target_constrs_file "add32.ucf" [current_fileset -constrset]
add_files [list {add32.ucf}] -fileset [get_property constrset [current_run]]
link_design
