library verilog;
use verilog.vl_types.all;
entity Decoder_2_To_4 is
    port(
        Input           : in     vl_logic_vector(1 downto 0);
        Output          : out    vl_logic_vector(3 downto 0)
    );
end Decoder_2_To_4;
