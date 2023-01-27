# include an additional script, which implements testcase-specific functions
set sim_extensions "sim_ext.tcl"
if { [file exists $sim_extensions] == 1} {               
    source sim_extensions
}

# add checks and breakpoints
# ...

add wave /culsans_tb/i_culsans/*

add wave /culsans_tb/i_culsans/genblk2[0]/i_ariane/i_cva6/commit_stage_i/*
add wave /culsans_tb/i_culsans/genblk2[1]/i_ariane/*
add wave /culsans_tb/i_culsans/genblk2[0]/i_ariane/*


# set a timeout
run 1 ms

quit
