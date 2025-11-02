library verilog;
use verilog.vl_types.all;
entity D_Flip_Flop_vlg_check_tst is
    port(
        Q               : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end D_Flip_Flop_vlg_check_tst;
