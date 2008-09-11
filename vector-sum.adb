package body vector.sum is

  -- C imports

  function vec_sum_f
   (a : vector_f_t;
    n : ic.int) return scalar_f_t;
  pragma import (c, vec_sum_f, "vec_sumNf_aligned");

  function vec_sum_d
   (a : vector_d_t;
    n : ic.int) return scalar_d_t;
  pragma import (c, vec_sum_d, "vec_sumNd_aligned");

  -- horizontal sum, in place

  function f (a : in vector_f_t) return scalar_f_t is
  begin
    return vec_sum_f (a, ic.int (size));
  end f;
  pragma inline (f);

  function d (a : in vector_d_t) return scalar_d_t is
  begin
    return vec_sum_d (a, ic.int (size));
  end d;
  pragma inline (d);

end vector.sum;
