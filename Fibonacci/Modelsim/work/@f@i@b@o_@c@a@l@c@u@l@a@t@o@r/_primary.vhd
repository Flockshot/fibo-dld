library verilog;
use verilog.vl_types.all;
entity FIBO_CALCULATOR is
    generic(
        size            : integer := 4
    );
    port(
        START           : in     vl_logic;
        CLK             : in     vl_logic;
        RST             : in     vl_logic;
        COUNT           : in     vl_logic_vector;
        DONE            : out    vl_logic;
        DATA            : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of size : constant is 1;
end FIBO_CALCULATOR;
