library verilog;
use verilog.vl_types.all;
entity Decoder_2_To_4_vlg_check_tst is
    port(
        Output          : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end Decoder_2_To_4_vlg_check_tst;
