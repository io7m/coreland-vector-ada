with Interfaces.C;

package body vector.sub is
  package ic renames Interfaces.C;

  -- C imports

  procedure vec_sub_f
   (a : in out vector_f_t;
    b : vector_f_t;
    n : ic.int);
  pragma import (c, vec_sub_f, "vec_subNf_aligned");

  procedure vec_sub_fx
   (a : vector_f_t;
    b : vector_f_t;
    x : out vector_f_t;
    n : ic.int);
  pragma import (c, vec_sub_fx, "vec_subNfx_aligned");

  procedure vec_sub_d
   (a : in out vector_d_t;
    b : vector_d_t;
    n : ic.int);
  pragma import (c, vec_sub_d, "vec_subNd_aligned");

  procedure vec_sub_dx
   (a : vector_d_t;
    b : vector_d_t;
    x : out vector_d_t;
    n : ic.int);
  pragma import (c, vec_sub_dx, "vec_subNdx_aligned");

  -- sub, in place

  procedure f
   (a : in out vector_f_t;
    b : in vector_f_t) is
  begin
    vec_sub_f (a, b, ic.int (size));
  end f;
  pragma inline (f);

  procedure d
   (a : in out vector_d_t;
    b : in vector_d_t) is
  begin
    vec_sub_d (a, b, ic.int (size));
  end d;
  pragma inline (d);

  -- sub, external storage

  procedure f_ext
   (a : in vector_f_t;
    b : in vector_f_t;
    x : out vector_f_t) is
  begin
    vec_sub_fx (a, b, x, ic.int (size));
  end f_ext;
  pragma inline (f_ext);

  procedure d_ext
   (a : in vector_d_t;
    b : in vector_d_t;
    x : out vector_d_t) is
  begin
    vec_sub_dx (a, b, x, ic.int (size));
  end d_ext;
  pragma inline (d_ext);

end vector.sub;
