library verilog;
use verilog.vl_types.all;
entity Four_Bit_2_To_1_Mux_vlg_sample_tst is
    port(
        A               : in     vl_logic_vector(3 downto 0);
        B               : in     vl_logic_vector(3 downto 0);
        S               : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Four_Bit_2_To_1_Mux_vlg_sample_tst;
