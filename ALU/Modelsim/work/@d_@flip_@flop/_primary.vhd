library verilog;
use verilog.vl_types.all;
entity D_Flip_Flop is
    generic(
        size            : integer := 4
    );
    port(
        D               : in     vl_logic_vector;
        Clk             : in     vl_logic;
        Q               : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of size : constant is 1;
end D_Flip_Flop;
