package body vector.sub_scalar is

  -- C imports

  procedure vec_sub_scalar_f (a: in out vector_f_t; sc: scalar_f_t; n: ic.int);
  pragma import (c, vec_sub_scalar_f, "vec_subscNf_aligned");
  procedure vec_sub_scalar_fx (a: vector_f_t; x: out vector_f_t; sc: scalar_f_t; n: ic.int);
  pragma import (c, vec_sub_scalar_fx, "vec_subscNfx_aligned");

  procedure vec_sub_scalar_d (a: in out vector_d_t; sc: scalar_d_t; n: ic.int);
  pragma import (c, vec_sub_scalar_d, "vec_subscNd_aligned");
  procedure vec_sub_scalar_dx (a: vector_d_t; x: out vector_d_t; sc: scalar_d_t; n: ic.int);
  pragma import (c, vec_sub_scalar_dx, "vec_subscNdx_aligned");

  -- sub scalar, in place

  procedure f (a: in out vector_f_t; sc: scalar_f_t) is
  begin
    vec_sub_scalar_f (a, sc, ic.int (size));
  end f;

  procedure d (a: in out vector_d_t; sc: scalar_d_t) is
  begin
    vec_sub_scalar_d (a, sc, ic.int (size));
  end d;

  pragma inline (f);
  pragma inline (d);

  -- sub scalar, external storage

  procedure f_ext (a: vector_f_t; x: out vector_f_t; sc: scalar_f_t) is
  begin
    vec_sub_scalar_fx (a, x, sc, ic.int (size));
  end f_ext;

  procedure d_ext (a: vector_d_t; x: out vector_d_t; sc: scalar_d_t) is
  begin
    vec_sub_scalar_dx (a, x, sc, ic.int (size));
  end d_ext;

  pragma inline (f_ext);
  pragma inline (d_ext);

end vector.sub_scalar;
