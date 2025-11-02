library verilog;
use verilog.vl_types.all;
entity ALU is
    generic(
        size            : integer := 4
    );
    port(
        A               : in     vl_logic_vector;
        B               : in     vl_logic_vector;
        opcode          : in     vl_logic_vector(2 downto 0);
        D               : out    vl_logic_vector;
        zero_flag       : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of size : constant is 1;
end ALU;
