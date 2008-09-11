package body vector.normalize is

  -- C imports

  procedure vec_normalize_f
   (a : in out vector_f_t;
    n : ic.int);
  pragma import (c, vec_normalize_f, "vec_normNf_aligned");

  procedure vec_normalize_fx
   (a : vector_f_t;
    x : out vector_f_t;
    n : ic.int);
  pragma import (c, vec_normalize_fx, "vec_normNfx_aligned");

  procedure vec_normalize_d
   (a : in out vector_d_t;
    n : ic.int);
  pragma import (c, vec_normalize_d, "vec_normNd_aligned");

  procedure vec_normalize_dx
   (a : vector_d_t;
    x : out vector_d_t;
    n : ic.int);
  pragma import (c, vec_normalize_dx, "vec_normNdx_aligned");

  -- normalize, in place

  procedure f (a : in out vector_f_t) is
  begin
    vec_normalize_f (a, ic.int (size));
  end f;
  pragma inline (f);

  procedure d (a : in out vector_d_t) is
  begin
    vec_normalize_d (a, ic.int (size));
  end d;
  pragma inline (d);

  -- normalize, external storage

  procedure f_ext
   (a : vector_f_t;
    x : out vector_f_t) is
  begin
    vec_normalize_fx (a, x, ic.int (size));
  end f_ext;
  pragma inline (f_ext);

  procedure d_ext
   (a : vector_d_t;
    x : out vector_d_t) is
  begin
    vec_normalize_dx (a, x, ic.int (size));
  end d_ext;
  pragma inline (d_ext);

end vector.normalize;
