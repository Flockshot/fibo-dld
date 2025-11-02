library verilog;
use verilog.vl_types.all;
entity Four_Bit_2_To_1_Mux is
    generic(
        size            : integer := 4
    );
    port(
        A               : in     vl_logic_vector;
        B               : in     vl_logic_vector;
        S               : in     vl_logic;
        Y               : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of size : constant is 1;
end Four_Bit_2_To_1_Mux;
