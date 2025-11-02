library verilog;
use verilog.vl_types.all;
entity ALU is
    generic(
        size            : integer := 4
    );
    port(
        Input1          : in     vl_logic_vector;
        Input2          : in     vl_logic_vector;
        opcode          : in     vl_logic_vector;
        zero_flag       : out    vl_logic;
        \out\           : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of size : constant is 1;
end ALU;
