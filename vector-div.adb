package body vector.div is

  -- C imports

  procedure vec_div_f (a: in out vector_f_t; b: vector_f_t; n: ic.int);
  pragma import (c, vec_div_f, "vec_divNf_aligned");
  procedure vec_div_fx (a: vector_f_t; b: vector_f_t; x: out vector_f_t; n: ic.int);
  pragma import (c, vec_div_fx, "vec_divNfx_aligned");

  procedure vec_div_d (a: in out vector_d_t; b: vector_d_t; n: ic.int);
  pragma import (c, vec_div_d, "vec_divNd_aligned");
  procedure vec_div_dx (a: vector_d_t; b: vector_d_t; x: out vector_d_t; n: ic.int);
  pragma import (c, vec_div_dx, "vec_divNdx_aligned");

  -- div, in place

  procedure f (a: in out vector_f_t; b: in vector_f_t) is
  begin
    vec_div_f (a, b, ic.int (size));
  end f;

  procedure d (a: in out vector_d_t; b: in vector_d_t) is
  begin
    vec_div_d (a, b, ic.int (size));
  end d;

  pragma inline (f);
  pragma inline (d);

  -- div, external storage

  procedure f_ext (a: in vector_f_t; b: in vector_f_t; x: out vector_f_t) is
  begin
    vec_div_fx (a, b, x, ic.int (size));
  end f_ext;

  procedure d_ext (a: in vector_d_t; b: in vector_d_t; x: out vector_d_t) is
  begin
    vec_div_dx (a, b, x, ic.int (size));
  end d_ext;

  pragma inline (f_ext);
  pragma inline (d_ext);

end vector.div;
