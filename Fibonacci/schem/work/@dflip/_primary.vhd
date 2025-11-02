library verilog;
use verilog.vl_types.all;
entity Dflip is
    generic(
        size            : integer := 4
    );
    port(
        Q               : out    vl_logic_vector;
        D               : in     vl_logic_vector;
        Clk             : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of size : constant is 1;
end Dflip;
