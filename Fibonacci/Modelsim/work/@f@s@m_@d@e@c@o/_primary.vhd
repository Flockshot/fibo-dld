library verilog;
use verilog.vl_types.all;
entity FSM_DECO is
    generic(
        size            : integer := 4
    );
    port(
        opcode          : in     vl_logic_vector;
        operand1        : in     vl_logic_vector;
        operand2        : in     vl_logic_vector;
        alu_opcode      : out    vl_logic_vector;
        rd_addr1        : out    vl_logic_vector;
        rd_addr2        : out    vl_logic_vector;
        wrt_addr        : out    vl_logic_vector;
        wrt_en          : out    vl_logic;
        load_data       : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of size : constant is 1;
end FSM_DECO;
