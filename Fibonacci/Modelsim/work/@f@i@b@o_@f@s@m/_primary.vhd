library verilog;
use verilog.vl_types.all;
entity FIBO_FSM is
    generic(
        size            : integer := 4
    );
    port(
        START           : in     vl_logic;
        \CLK\           : in     vl_logic;
        RST             : in     vl_logic;
        ZERO_FLAG       : in     vl_logic;
        wrt_addr        : out    vl_logic_vector;
        wrt_en          : out    vl_logic;
        clk             : out    vl_logic;
        load_data       : out    vl_logic;
        rd_addr1        : out    vl_logic_vector;
        rd_addr2        : out    vl_logic_vector;
        alu_opcode      : out    vl_logic_vector;
        DONE            : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of size : constant is 1;
end FIBO_FSM;
