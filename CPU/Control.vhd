library IEEE;
use IEEE.std_logic_1164.all;
use work.cpu_lib.all;

entity control is
  port( clock : in std_logic;
           reset : in std_logic;
           instrReg : in bit16;
           compout : in std_logic;
           ready : in std_logic;
           progCntrWr : out std_logic;
           progCntrRd : out std_logic;
           addrRegWr : out std_logic;
           addrRegRd : out std_logic;
           outRegWr : out std_logic;
           outRegRd : out std_logic;
           shiftSel : out t_shift;
           aluSel : out t_alu;
           compSel : out t_comp;
           opRegRd : out std_logic;
           opRegWr : out std_logic;
           instrWr : out std_logic;
           regSel : out t_reg;
           regRd : out std_logic;
           regWr : out std_logic;
           rw : out std_logic;
           vma : out std_logic
        );
end control;

architecture rtl of control is
  signal current_state, next_state : state;
begin
  nxtstateproc: process( current_state, instrReg, compout, ready)
  begin
    progCntrWr <= '0';
    progCntrRd <= '0';
    addrRegWr <= '0';
    outRegWr <= '0';
    outRegRd <= '0';
    shiftSel <= shftpass;
    aluSel <= alupass;
    compSel <= eq;
    opRegRd <= '0';
    opRegWr <= '0';
    instrWr <= '0';
    regSel <= "000";
    regRd <= '0';
    regWr <= '0';
    rw <= '0';
    vma <= '0';

    case current_state is 
      when reset1 =>
         aluSel <= zero after 1 ns;
         shiftSel <= shftpass;
         next_state <= reset2;

      when reset2 =>
        aluSel <= zero;
        shiftSel <= shftpass;
        outRegWr <= '1';
        next_state <= reset3;

      when reset3 => 
        outRegRd <= '1';
        next_state <= reset4;

      when reset4 =>
         outRegRd <= '1';
         progCntrWr <= '1';
         addrRegWr <= '1';
         next_state <= reset5;

      when reset5 =>
        vma <= '1';
        rw <= '0';
        next_state <= reset6;

      when reset6 =>
         vma <= '1';
         rw <= '0';
         if ready = '1' then 
           instrWr <= '1';
           next_state <= execute;
         else
           next_state <= reset6;
         end if;

      when execute =>
        case instrReg(15 downto 11) is
          when "00000" =>                 --- nop
            next_state <= incPc;

          when "00001" =>               --- load
            regSel <= instrReg(5 downto 3);
            regRd <= '1';
            next_state <= load2;
 
          when "00010" =>               --- store
            regSel <= instrReg(2 downto 0);
            regRd <= '1';
            next_state <= store2;

          when "00011" =>            ----- move
            regSel <= instrReg(5 downto 3);
            regRd <= '1';
            aluSel <= alupass;
            shiftSel <= shftpass;
            next_state <= move2;

          when "00100" =>          ---- loadI
            progcntrRd <= '1';
            alusel <= inc;
            shiftsel <= shftpass;
            next_state <= loadI2;

          when "00101" =>          ---- BranchImm
            progcntrRd <= '1';
            alusel <= inc;
            shiftsel <= shftpass;
            next_state <= braI2;

          when "00110" =>          ---- BranchGTImm
            regSel <= instrReg(5 downto 3);
            regRd <= '1';
            next_state <= bgtI2;

          when "00111" =>         ------- inc
            regSel <= instrReg(2 downto 0);
            regRd <= '1';
            alusel <= inc;
            shiftsel <= shftpass;
            next_state <= inc2;
            
          when others =>
            next_state <= incPc;

        end case;

      when load2 =>
         regSel <= instrReg(5 downto 3);
         regRd <= '1';
         addrregWr <= '1';
         next_state <= load3;

      when load3 =>
        vma <= '1';
        rw <= '0';
        next_state <= load4;

      when load4 =>
        vma <= '1';
        rw <= '0';
        regSel <= instrReg(2 downto 0);
        regWr <= '1';
        next_state <= incPc;

      when store2 =>
        regSel <= instrReg(2 downto 0);
        regRd <= '1';
        addrregWr <= '1';
        next_state <= store3;

      when store3 =>
        regSel <= instrReg(5 downto 3);
        regRd <= '1';
        next_state <= store4;

      when store4 =>
        regSel <= instrReg(5 downto 3);
        regRd <= '1';
        vma <= '1';
        rw <= '1';
        next_state <= incPc;

      when move2 =>
        regSel <= instrReg(5 downto 3);
        regRd <= '1';
        aluSel <= alupass;
        shiftsel <= shftpass;
        outRegWr <= '1';
        next_state <= move3;

      when move3 =>
        outRegRd <= '1';
        next_state <= move4;

     when move4 =>
       outRegRd <= '1';
       regSel <= instrReg(2 downto 0);
       regWr <= '1';
       next_state <= incPc;

      when loadI2 =>
        progcntrRd <= '1';
        alusel <= inc;
        shiftsel <= shftpass;
        outregWr <= '1';
        next_state <= loadI3;

      when loadI3 =>
        outregRd <= '1';
        next_state <= loadI4;

      when loadI4 =>
        outregRd <= '1';
        progcntrWr <= '1';
        addrregWr <= '1';
        next_state <= loadI5;

      when loadI5 =>
        vma <= '1';
        rw <= '0';
        next_state <= loadI6;

      when loadI6 =>
        vma <= '1';
        rw <= '0';
        if ready = '1' then 
          regSel <= instrReg(2 downto 0);
          regWr <= '1';
          next_state <= incPc;
        else
          next_state <= loadI6;
        end if;

      when braI2 =>
        progcntrRd <= '1';
        alusel <= inc;
        shiftsel <= shftpass;
        outregWr <= '1';
        next_state <= braI3;

      when braI3 =>
        outregRd <= '1';
        next_state <= braI4;

      when braI4 =>
        outregRd <= '1';
        progcntrWr <= '1';
        addrregWr <= '1';
        next_state <= braI5;

      when braI5 =>
        vma <= '1';
        rw <= '0';
        next_state <= braI6;

      when braI6 =>
        vma <= '1';
        rw <= '0';
        if ready = '1' then 
          progcntrWr <= '1';
          next_state <= loadPc;
        else
          next_state <= braI6;
        end if;

      when bgtI2 =>
        regSel <= instrReg(5 downto 3);
        regRd <= '1';
        opRegWr <= '1';
        next_state <= bgtI3;

      when bgtI3 =>
        opRegRd <= '1';
        regSel <= instrReg(2 downto 0);
        regRd <= '1';
        compsel <= gt;
        next_state <= bgtI4;

      when bgtI4 =>
        opRegRd <= '1' after 1 ns;
        regSel <= instrReg(2 downto 0);
        regRd <= '1';
        compsel <= gt;
        if compout = '1' then 
          next_state <= bgtI5;
        else 
          next_state <= incPc;
        end if;

      when bgtI5 =>
        progcntrRd <= '1';
        alusel <= inc;
        shiftSel <= shftpass;
        next_state <= bgtI6;

      when bgtI6 =>
        progcntrRd <= '1';
        alusel <= inc;
        shiftsel <= shftpass;
        outregWr <= '1';
        next_state <= bgtI7;

      when bgtI7 =>
        outregRd <= '1';
        next_state <= bgtI8;

      when bgtI8 =>
        outregRd <= '1';
        progcntrWr <= '1';
        addrregWr <= '1';
        next_state <= bgtI9;

      when bgtI9 =>
        vma <= '1';
        rw <= '0';
        next_state <= bgtI10;

      when bgtI10 =>
        vma <= '1';
        rw <= '0';
        if ready = '1' then 
          progcntrWr <= '1';
          next_state <= loadPc;
        else 
          next_state <= bgtI10;
        end if;

      when inc2 =>
        regSel <= instrReg(2 downto 0);
        regRd <= '1';
        alusel <= inc;
        shiftsel <= shftpass;
        outregWr <= '1';
        next_state <= inc3;

      when inc3 =>
        outregRd <= '1';
        next_state <= inc4;

     when inc4 =>
        outregRd <= '1';
        regsel <= instrReg(2 downto 0);
        regWr <= '1';
        next_state <= incPc;

      when loadPc =>
        progcntrRd <= '1';
        next_state <= loadPc2;

      when loadPc2 =>
        progcntrRd <= '1';
        addrRegWr <= '1';
        next_state <= loadPc3;

      when loadPc3 =>
        vma <= '1';
        rw <= '0';
        next_state <= loadPc4;
 
      when loadPc4 =>
        vma <= '1';
        rw <= '0';
        if ready = '1' then 
          instrWr <= '1';
          next_state <= execute;
        else
          next_state <= loadPc4;
        end if;

      when incPc =>
        progcntrRd <= '1';
        alusel <= inc;
        shiftsel <= shftpass;
        next_state <= incPc2;

      when incPc2 =>
        progcntrRd <= '1';
        alusel <= inc;
        shiftsel <= shftpass;
        outregWr <= '1';
        next_state <= incPc3;

      when incPc3 =>
        outregRd <= '1';
        next_state <= incPc4;

      when incPc4 =>
        outregRd <= '1';
        progcntrWr <= '1';
        addrregWr <= '1';
        next_state <= incPc5;

      when incPc5 =>
        vma <= '1';
        rw <= '0';
        next_state <= incPc6;

      when incPc6 =>
        vma <= '1';
        rw <= '0';
        if ready = '1' then 
          instrWr <= '1';
          next_state <= execute;
        else 
          next_state <= incPc6;
        end if;

      when others => 
        next_state <= incPc;

   end case;

end process;

  controlffProc: process(clock, reset)
  begin
    if reset = '1' then 
      current_state <= reset1 after 1 ns;
    elsif clock'event and clock = '1' then 
      current_state <= next_state after 1 ns;
    end if;
  end process;
end rtl;
