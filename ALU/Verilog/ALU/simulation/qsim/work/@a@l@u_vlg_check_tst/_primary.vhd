library verilog;
use verilog.vl_types.all;
entity ALU_vlg_check_tst is
    port(
        \out\           : in     vl_logic_vector(3 downto 0);
        zero_flag       : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end ALU_vlg_check_tst;
