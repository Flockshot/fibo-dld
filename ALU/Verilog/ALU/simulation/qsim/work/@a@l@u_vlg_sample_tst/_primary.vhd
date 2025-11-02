library verilog;
use verilog.vl_types.all;
entity ALU_vlg_sample_tst is
    port(
        Input1          : in     vl_logic_vector(3 downto 0);
        Input2          : in     vl_logic_vector(3 downto 0);
        opcode          : in     vl_logic_vector(2 downto 0);
        sampler_tx      : out    vl_logic
    );
end ALU_vlg_sample_tst;
