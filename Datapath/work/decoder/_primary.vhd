library verilog;
use verilog.vl_types.all;
entity decoder is
    generic(
        size            : integer := 4
    );
    port(
        I               : in     vl_logic_vector;
        O               : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of size : constant is 1;
end decoder;
