with ada.text_io;
with vector;
with vector.mult;

procedure mult_double is
  package io renames ada.text_io;

  package v16 is new vector (16);
  package v16_mult is new v16.mult;

  use type v16.scalar_d_t;

  base_a : constant v16.vector_d_t := (others => 10.0);
  base_b : constant v16.vector_d_t := (others => 5.0);
  base_r : v16.vector_d_t := (others => 50.0);

  testno : integer := 0;

  procedure sys_exit (e: integer);
  pragma import (c, sys_exit, "exit");

  procedure fail (want, got : v16.scalar_d_t; index: integer) is
    s_tnum  : constant string := integer'image (testno);
    s_index : constant string := integer'image (index);
    s_want  : constant string := v16.scalar_d_t'image (want);
    s_got   : constant string := v16.scalar_d_t'image (got);
  begin
    io.put_line ("[" & s_tnum & "][" & s_index & "] fail " & s_want & " /= " & s_got);
    sys_exit (1);
  end fail;

  procedure pass (want, got : v16.scalar_d_t; index: integer) is
    s_tnum  : constant string := integer'image (testno);
    s_index : constant string := integer'image (index);
    s_want  : constant string := v16.scalar_d_t'image (want);
    s_got   : constant string := v16.scalar_d_t'image (got);
  begin
    io.put_line ("[" & s_tnum & "][" & s_index & "] " & s_want & " = " & s_got);
  end pass;

  procedure check (vec : v16.vector_d_t) is
  begin
    for index in vec'range loop
      if vec (index) /= base_r (index) then
        fail (want => base_r (index), got => vec (index), index => index);
      else
        pass (want => base_r (index), got => vec (index), index => index);
      end if;
    end loop;
    testno := testno + 1;
  end check;

begin

  --
  -- mult, in place
  --

  declare
    tmp_a : v16.vector_d_t := base_a;
  begin
    v16_mult.d (tmp_a, base_b);
    check (tmp_a);
  end;

  --
  -- mult, external storage
  --

  declare
    tmp_a : v16.vector_d_t := base_a;
  begin
    v16_mult.d_ext (base_a, base_b, tmp_a);
    check (tmp_a);
  end;

end mult_double;
