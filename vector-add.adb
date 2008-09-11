package body vector.add is

  -- C imports

  procedure vec_add_f
   (a : in out vector_f_t;
    b : vector_f_t;
    n : ic.int);
  pragma import (c, vec_add_f, "vec_addNf_aligned");

  procedure vec_add_fx
   (a : vector_f_t;
    b : vector_f_t;
    x : out vector_f_t;
    n : ic.int);
  pragma import (c, vec_add_fx, "vec_addNfx_aligned");

  procedure vec_add_d
   (a : in out vector_d_t;
    b : vector_d_t;
    n : ic.int);
  pragma import (c, vec_add_d, "vec_addNd_aligned");

  procedure vec_add_dx
   (a : vector_d_t;
    b : vector_d_t;
    x : out vector_d_t;
    n : ic.int);
  pragma import (c, vec_add_dx, "vec_addNdx_aligned");

  -- add, in place

  procedure f
   (a : in out vector_f_t;
    b : in vector_f_t) is
  begin
    vec_add_f (a, b, ic.int (size));
  end f;
  pragma inline (f);

  procedure d
   (a : in out vector_d_t;
    b : in vector_d_t) is
  begin
    vec_add_d (a, b, ic.int (size));
  end d;
  pragma inline (d);

  -- add, external storage

  procedure f_ext
   (a : in vector_f_t;
    b : in vector_f_t;
    x : out vector_f_t) is
  begin
    vec_add_fx (a, b, x, ic.int (size));
  end f_ext;
  pragma inline (f_ext);

  procedure d_ext
   (a : in vector_d_t;
    b : in vector_d_t;
    x : out vector_d_t) is
  begin
    vec_add_dx (a, b, x, ic.int (size));
  end d_ext;
  pragma inline (d_ext);

end vector.add;
