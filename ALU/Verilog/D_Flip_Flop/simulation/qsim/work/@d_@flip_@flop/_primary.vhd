library verilog;
use verilog.vl_types.all;
entity D_Flip_Flop is
    port(
        D               : in     vl_logic_vector(3 downto 0);
        Clk             : in     vl_logic;
        Q               : out    vl_logic_vector(3 downto 0)
    );
end D_Flip_Flop;
