library verilog;
use verilog.vl_types.all;
entity FSM is
    generic(
        size            : integer := 4;
        S0              : integer := 0;
        S1              : integer := 1;
        S2              : integer := 2;
        S3              : integer := 3;
        S4              : integer := 4;
        S5              : integer := 5;
        S6              : integer := 6;
        S7              : integer := 7;
        S8              : integer := 8;
        S9              : integer := 9;
        S10             : integer := 10
    );
    port(
        START           : in     vl_logic;
        ZERO_FLAG       : in     vl_logic;
        CLK             : in     vl_logic;
        RST             : in     vl_logic;
        DONE            : out    vl_logic;
        opcode          : out    vl_logic_vector;
        operand1        : out    vl_logic_vector;
        operand2        : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of size : constant is 1;
    attribute mti_svvh_generic_type of S0 : constant is 1;
    attribute mti_svvh_generic_type of S1 : constant is 1;
    attribute mti_svvh_generic_type of S2 : constant is 1;
    attribute mti_svvh_generic_type of S3 : constant is 1;
    attribute mti_svvh_generic_type of S4 : constant is 1;
    attribute mti_svvh_generic_type of S5 : constant is 1;
    attribute mti_svvh_generic_type of S6 : constant is 1;
    attribute mti_svvh_generic_type of S7 : constant is 1;
    attribute mti_svvh_generic_type of S8 : constant is 1;
    attribute mti_svvh_generic_type of S9 : constant is 1;
    attribute mti_svvh_generic_type of S10 : constant is 1;
end FSM;
