library verilog;
use verilog.vl_types.all;
entity FIBO_DATAPATH is
    generic(
        size            : integer := 4
    );
    port(
        wrt_addr        : in     vl_logic_vector;
        wrt_en          : in     vl_logic;
        clk             : in     vl_logic;
        load_data       : in     vl_logic;
        rd_addr1        : in     vl_logic_vector;
        rd_addr2        : in     vl_logic_vector;
        alu_opcode      : in     vl_logic_vector;
        count           : in     vl_logic_vector;
        zero_flag       : out    vl_logic;
        data            : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of size : constant is 1;
end FIBO_DATAPATH;
