transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {Control.vo}

vlog -vlog01compat -work work +incdir+C:/Users/ysmai/Desktop/Multiplicador-Shift-Add/Multiplicador/Control {C:/Users/ysmai/Desktop/Multiplicador-Shift-Add/Multiplicador/Control/Control_TB.v}

vsim -t 1ps -L altera_ver -L altera_lnsim_ver -L fiftyfivenm_ver -L gate_work -L work -voptargs="+acc"  Control_TB

add wave *
view structure
view signals
run -all
