package body vector.add_scalar is

  -- C imports

  procedure vec_add_scalar_f (a: in out vector_f_t; sc: scalar_f_t; n: ic.int);
  pragma import (c, vec_add_scalar_f, "vec_addscNf_aligned");
  procedure vec_add_scalar_fx (a: vector_f_t; x: out vector_f_t; sc: scalar_f_t; n: ic.int);
  pragma import (c, vec_add_scalar_fx, "vec_addscNfx_aligned");

  procedure vec_add_scalar_d (a: in out vector_d_t; sc: scalar_d_t; n: ic.int);
  pragma import (c, vec_add_scalar_d, "vec_addscNd_aligned");
  procedure vec_add_scalar_dx (a: vector_d_t; x: out vector_d_t; sc: scalar_d_t; n: ic.int);
  pragma import (c, vec_add_scalar_dx, "vec_addscNdx_aligned");

  -- add scalar, in place

  procedure f (a: in out vector_f_t; sc: scalar_f_t) is
  begin
    vec_add_scalar_f (a, sc, ic.int (size));
  end f;

  procedure d (a: in out vector_d_t; sc: scalar_d_t) is
  begin
    vec_add_scalar_d (a, sc, ic.int (size));
  end d;

  pragma inline (f);
  pragma inline (d);

  -- add scalar, external storage

  procedure f_ext (a: vector_f_t; x: out vector_f_t; sc: scalar_f_t) is
  begin
    vec_add_scalar_fx (a, x, sc, ic.int (size));
  end f_ext;

  procedure d_ext (a: vector_d_t; x: out vector_d_t; sc: scalar_d_t) is
  begin
    vec_add_scalar_dx (a, x, sc, ic.int (size));
  end d_ext;

  pragma inline (f_ext);
  pragma inline (d_ext);

end vector.add_scalar;
