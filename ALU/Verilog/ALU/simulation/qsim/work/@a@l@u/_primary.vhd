library verilog;
use verilog.vl_types.all;
entity ALU is
    port(
        Input1          : in     vl_logic_vector(3 downto 0);
        Input2          : in     vl_logic_vector(3 downto 0);
        opcode          : in     vl_logic_vector(2 downto 0);
        zero_flag       : out    vl_logic;
        \out\           : out    vl_logic_vector(3 downto 0)
    );
end ALU;
