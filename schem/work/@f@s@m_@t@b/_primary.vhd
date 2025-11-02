library verilog;
use verilog.vl_types.all;
entity FSM_TB is
    generic(
        size            : integer := 4
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of size : constant is 1;
end FSM_TB;
