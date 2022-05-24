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

