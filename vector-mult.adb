package body vector.mult is

  -- C imports

  procedure vec_mult_f (a: in out vector_f_t; b: vector_f_t; n: ic.int);
  pragma import (c, vec_mult_f, "vec_multNf_aligned");
  procedure vec_mult_fx (a: vector_f_t; b: vector_f_t; x: out vector_f_t; n: ic.int);
  pragma import (c, vec_mult_fx, "vec_multNfx_aligned");

  procedure vec_mult_d (a: in out vector_d_t; b: vector_d_t; n: ic.int);
  pragma import (c, vec_mult_d, "vec_multNd_aligned");
  procedure vec_mult_dx (a: vector_d_t; b: vector_d_t; x: out vector_d_t; n: ic.int);
  pragma import (c, vec_mult_dx, "vec_multNdx_aligned");

  -- mult, in place

  procedure f (a: in out vector_f_t; b: in vector_f_t) is
  begin
    vec_mult_f (a, b, ic.int (size));
  end f;

  procedure d (a: in out vector_d_t; b: in vector_d_t) is
  begin
    vec_mult_d (a, b, ic.int (size));
  end d;

  pragma inline (f);
  pragma inline (d);

  -- mult, external storage

  procedure f_ext (a: in vector_f_t; b: in vector_f_t; x: out vector_f_t) is
  begin
    vec_mult_fx (a, b, x, ic.int (size));
  end f_ext;

  procedure d_ext (a: in vector_d_t; b: in vector_d_t; x: out vector_d_t) is
  begin
    vec_mult_dx (a, b, x, ic.int (size));
  end d_ext;

  pragma inline (f_ext);
  pragma inline (d_ext);

end vector.mult;
