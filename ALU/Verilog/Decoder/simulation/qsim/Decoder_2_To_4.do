onerror {quit -f}
vlib work
vlog -work work Decoder_2_To_4.vo
vlog -work work Decoder_2_To_4.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Decoder_2_To_4_vlg_vec_tst
vcd file -direction Decoder_2_To_4.msim.vcd
vcd add -internal Decoder_2_To_4_vlg_vec_tst/*
vcd add -internal Decoder_2_To_4_vlg_vec_tst/i1/*
add wave /*
run -all
