with ada.text_io;
with vector;
with vector.sum;

procedure sum_single is
  package io renames ada.text_io;

  package v16 is new vector (16);
  package v16_sum is new v16.sum;

  use type v16.scalar_f_t;

  base_a: constant v16.vector_f_t := (others => 1.0);
   tmp_a: v16.vector_f_t;
    want: constant v16.scalar_f_t := 16.0;
     got: v16.scalar_f_t;

  testno: integer := 0;

  procedure sys_exit (e: integer);
  pragma import (c, sys_exit, "exit");

  procedure fail (want, got: v16.scalar_f_t) is
    s_tnum: constant string := integer'image (testno);
    s_want: constant string := v16.scalar_f_t'image (want);
    s_got: constant string := v16.scalar_f_t'image (got);
  begin
    io.put_line ("[" & s_tnum & "] fail " & s_want & " /= " & s_got);
    sys_exit (1);
  end fail;

  procedure pass (want, got: v16.scalar_f_t) is
    s_tnum: constant string := integer'image (testno);
    s_want: constant string := v16.scalar_f_t'image (want);
    s_got: constant string := v16.scalar_f_t'image (got);
  begin
    io.put_line ("[" & s_tnum & "] " & s_want & " = " & s_got);
  end pass;

  procedure check is
  begin
    if (want /= got) then
      fail (want, got);
    else
      pass (want, got);
    end if;

    testno := testno + 1;
  end check;

begin

  --
  -- sum, in place
  --

  tmp_a := base_a;
  got := v16_sum.f (tmp_a);
  check;

end sum_single;