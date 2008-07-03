package body vector.negate is

  -- C imports

  procedure vec_negate_f (a: in out vector_f_t; n: ic.int);
  pragma import (c, vec_negate_f, "vec_negaNf_aligned");
  procedure vec_negate_fx (a: vector_f_t; x: out vector_f_t; n: ic.int);
  pragma import (c, vec_negate_fx, "vec_negaNfx_aligned");

  procedure vec_negate_d (a: in out vector_d_t; n: ic.int);
  pragma import (c, vec_negate_d, "vec_negaNd_aligned");
  procedure vec_negate_dx (a: vector_d_t; x: out vector_d_t; n: ic.int);
  pragma import (c, vec_negate_dx, "vec_negaNdx_aligned");

  -- negate, in place

  procedure f (a: in out vector_f_t) is
  begin
    vec_negate_f (a, ic.int (size));
  end f;

  procedure d (a: in out vector_d_t) is
  begin
    vec_negate_d (a, ic.int (size));
  end d;

  pragma inline (f);
  pragma inline (d);

  -- negate, external storage

  procedure f_ext (a: vector_f_t; x: out vector_f_t) is
  begin
    vec_negate_fx (a, x, ic.int (size));
  end f_ext;

  procedure d_ext (a: vector_d_t; x: out vector_d_t) is
  begin
    vec_negate_dx (a, x, ic.int (size));
  end d_ext;

  pragma inline (f_ext);
  pragma inline (d_ext);

end vector.negate;
