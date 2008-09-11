package body vector.assign is

  -- C imports

  procedure vec_assign_f
   (a : in out vector_f_t;
    b : vector_f_t;
    n : ic.int);
  pragma import (c, vec_assign_f, "vec_assignNf_aligned");

  procedure vec_assign_d
   (a : in out vector_d_t;
    b : vector_d_t;
    n : ic.int);
  pragma import (c, vec_assign_d, "vec_assignNd_aligned");

  -- assign, in place

  procedure f (a : in out vector_f_t; b : in vector_f_t) is
  begin
    vec_assign_f (a, b, ic.int (size));
  end f;
  pragma inline (f);

  procedure d (a : in out vector_d_t; b : in vector_d_t) is
  begin
    vec_assign_d (a, b, ic.int (size));
  end d;
  pragma inline (d);

end vector.assign;
