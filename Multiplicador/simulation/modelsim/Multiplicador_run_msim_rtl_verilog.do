transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/GitMultiplicador/Multiplicador-Shift-Add/Multiplicador {D:/GitMultiplicador/Multiplicador-Shift-Add/Multiplicador/Multiplicador.v}
vlog -vlog01compat -work work +incdir+D:/GitMultiplicador/Multiplicador-Shift-Add/Multiplicador/ACC {D:/GitMultiplicador/Multiplicador-Shift-Add/Multiplicador/ACC/ACC.v}
vlog -vlog01compat -work work +incdir+D:/GitMultiplicador/Multiplicador-Shift-Add/Multiplicador/Adder {D:/GitMultiplicador/Multiplicador-Shift-Add/Multiplicador/Adder/Adder.v}
vlog -vlog01compat -work work +incdir+D:/GitMultiplicador/Multiplicador-Shift-Add/Multiplicador/Control {D:/GitMultiplicador/Multiplicador-Shift-Add/Multiplicador/Control/Control.v}
vlog -vlog01compat -work work +incdir+D:/GitMultiplicador/Multiplicador-Shift-Add/Multiplicador/Counter {D:/GitMultiplicador/Multiplicador-Shift-Add/Multiplicador/Counter/Counter.v}

vlog -vlog01compat -work work +incdir+D:/GitMultiplicador/Multiplicador-Shift-Add/Multiplicador {D:/GitMultiplicador/Multiplicador-Shift-Add/Multiplicador/Multiplicador_TB.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L fiftyfivenm_ver -L rtl_work -L work -voptargs="+acc"  Multiplicador_TB

add wave *
view structure
view signals
run -all
