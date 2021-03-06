package body vector.mult_scalar is

  -- C imports

  procedure vec_mult_scalar_f
   (a  : in out vector_f_t;
    sc : scalar_f_t;
    n  : ic.int);
  pragma import (c, vec_mult_scalar_f, "vec_multscNf_aligned");

  procedure vec_mult_scalar_fx
   (a  : vector_f_t;
    x  : out vector_f_t;
    sc : scalar_f_t;
    n  : ic.int);
  pragma import (c, vec_mult_scalar_fx, "vec_multscNfx_aligned");

  procedure vec_mult_scalar_d
   (a  : in out vector_d_t;
    sc : scalar_d_t;
    n  : ic.int);
  pragma import (c, vec_mult_scalar_d, "vec_multscNd_aligned");

  procedure vec_mult_scalar_dx
   (a  : vector_d_t;
    x  : out vector_d_t;
    sc : scalar_d_t;
    n  : ic.int);
  pragma import (c, vec_mult_scalar_dx, "vec_multscNdx_aligned");

  -- mult scalar, in place

  procedure f
   (a  : in out vector_f_t;
    sc : scalar_f_t) is
  begin
    vec_mult_scalar_f (a, sc, ic.int (size));
  end f;
  pragma inline (f);

  procedure d
   (a  : in out vector_d_t;
    sc : scalar_d_t) is
  begin
    vec_mult_scalar_d (a, sc, ic.int (size));
  end d;
  pragma inline (d);

  -- mult scalar, external storage

  procedure f_ext
   (a  : vector_f_t;
    x  : out vector_f_t;
    sc : scalar_f_t) is
  begin
    vec_mult_scalar_fx (a, x, sc, ic.int (size));
  end f_ext;
  pragma inline (f_ext);

  procedure d_ext
   (a  : vector_d_t;
    x  : out vector_d_t;
    sc : scalar_d_t) is
  begin
    vec_mult_scalar_dx (a, x, sc, ic.int (size));
  end d_ext;
  pragma inline (d_ext);

end vector.mult_scalar;
