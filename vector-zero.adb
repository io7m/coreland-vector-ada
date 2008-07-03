package body vector.zero is

  -- C imports

  procedure vec_zero_f (a: vector_f_t; n: ic.int);
  pragma import (c, vec_zero_f, "vec_zeroNf_aligned");

  procedure vec_zero_d (a: vector_d_t; n: ic.int);
  pragma import (c, vec_zero_d, "vec_zeroNd_aligned");

  -- zero, in place

  procedure f (a: in vector_f_t) is
  begin
    vec_zero_f (a, ic.int (size));
  end f;

  procedure d (a: in vector_d_t) is
  begin
    vec_zero_d (a, ic.int (size));
  end d;

  pragma inline (f);
  pragma inline (d);

end vector.zero;
