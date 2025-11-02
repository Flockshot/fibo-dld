library verilog;
use verilog.vl_types.all;
entity D_Flip_Flop_vlg_sample_tst is
    port(
        Clk             : in     vl_logic;
        D               : in     vl_logic_vector(3 downto 0);
        sampler_tx      : out    vl_logic
    );
end D_Flip_Flop_vlg_sample_tst;
