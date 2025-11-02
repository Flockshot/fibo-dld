library verilog;
use verilog.vl_types.all;
entity Four_Bit_4_To_1_TB is
    generic(
        size            : integer := 4
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of size : constant is 1;
end Four_Bit_4_To_1_TB;
