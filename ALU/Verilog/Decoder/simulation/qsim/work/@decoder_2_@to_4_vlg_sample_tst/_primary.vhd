library verilog;
use verilog.vl_types.all;
entity Decoder_2_To_4_vlg_sample_tst is
    port(
        Input           : in     vl_logic_vector(1 downto 0);
        sampler_tx      : out    vl_logic
    );
end Decoder_2_To_4_vlg_sample_tst;
