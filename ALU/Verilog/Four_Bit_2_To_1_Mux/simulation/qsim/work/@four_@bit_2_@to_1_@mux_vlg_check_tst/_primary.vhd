library verilog;
use verilog.vl_types.all;
entity Four_Bit_2_To_1_Mux_vlg_check_tst is
    port(
        Y               : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end Four_Bit_2_To_1_Mux_vlg_check_tst;
