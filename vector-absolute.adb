package body vector.absolute is

  -- C imports

  procedure vec_absolute_f (a: in out vector_f_t; n: ic.int);
  pragma import (c, vec_absolute_f, "vec_absNf_aligned");
  procedure vec_absolute_fx (a: vector_f_t; x: out vector_f_t; n: ic.int);
  pragma import (c, vec_absolute_fx, "vec_absNfx_aligned");

  procedure vec_absolute_d (a: in out vector_d_t; n: ic.int);
  pragma import (c, vec_absolute_d, "vec_absNd_aligned");
  procedure vec_absolute_dx (a: vector_d_t; x: out vector_d_t; n: ic.int);
  pragma import (c, vec_absolute_dx, "vec_absNdx_aligned");

  -- absolute, in place

  procedure f (a: in out vector_f_t) is
  begin
    vec_absolute_f (a, ic.int (size));
  end f;

  procedure d (a: in out vector_d_t) is
  begin
    vec_absolute_d (a, ic.int (size));
  end d;

  pragma inline (f);
  pragma inline (d);

  -- absolute, external storage

  procedure f_ext (a: vector_f_t; x: out vector_f_t) is
  begin
    vec_absolute_fx (a, x, ic.int (size));
  end f_ext;

  procedure d_ext (a: vector_d_t; x: out vector_d_t) is
  begin
    vec_absolute_dx (a, x, ic.int (size));
  end d_ext;

  pragma inline (f_ext);
  pragma inline (d_ext);

end vector.absolute;
