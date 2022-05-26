transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/ysmai/Desktop/Multiplicador-Shift-Add/Multiplicador/Counter {C:/Users/ysmai/Desktop/Multiplicador-Shift-Add/Multiplicador/Counter/Counter.v}
vlog -vlog01compat -work work +incdir+C:/Users/ysmai/Desktop/Multiplicador-Shift-Add/Multiplicador/Control {C:/Users/ysmai/Desktop/Multiplicador-Shift-Add/Multiplicador/Control/Control.v}
vlog -vlog01compat -work work +incdir+C:/Users/ysmai/Desktop/Multiplicador-Shift-Add/Multiplicador/Adder {C:/Users/ysmai/Desktop/Multiplicador-Shift-Add/Multiplicador/Adder/Adder.v}
vlog -vlog01compat -work work +incdir+C:/Users/ysmai/Desktop/Multiplicador-Shift-Add/Multiplicador/ACC {C:/Users/ysmai/Desktop/Multiplicador-Shift-Add/Multiplicador/ACC/ACC.v}
vlog -vlog01compat -work work +incdir+C:/Users/ysmai/Desktop/Multiplicador-Shift-Add/Multiplicador {C:/Users/ysmai/Desktop/Multiplicador-Shift-Add/Multiplicador/Multiplicador.v}

vlog -vlog01compat -work work +incdir+C:/Users/ysmai/Desktop/Multiplicador-Shift-Add/Multiplicador {C:/Users/ysmai/Desktop/Multiplicador-Shift-Add/Multiplicador/Multiplicador_TB.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L fiftyfivenm_ver -L rtl_work -L work -voptargs="+acc"  Multiplicador_TB

add wave *
view structure
view signals
run -all
