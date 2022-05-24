transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/Multiplicador/Counter {D:/Multiplicador/Counter/Counter.v}
vlog -vlog01compat -work work +incdir+D:/Multiplicador/Control {D:/Multiplicador/Control/Control.v}
vlog -vlog01compat -work work +incdir+D:/Multiplicador/Adder {D:/Multiplicador/Adder/Adder.v}
vlog -vlog01compat -work work +incdir+D:/Multiplicador/ACC {D:/Multiplicador/ACC/ACC.v}
vlog -vlog01compat -work work +incdir+D:/Multiplicador {D:/Multiplicador/Multiplicador.v}

vlog -vlog01compat -work work +incdir+D:/Multiplicador {D:/Multiplicador/Multiplicador_TB.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L fiftyfivenm_ver -L rtl_work -L work -voptargs="+acc"  Multiplicador_TB

add wave *
view structure
view signals
run -all
