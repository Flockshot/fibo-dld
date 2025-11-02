library verilog;
use verilog.vl_types.all;
entity FIBO_Datapath_tb is
    generic(
        n               : integer := 4
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of n : constant is 1;
end FIBO_Datapath_tb;
