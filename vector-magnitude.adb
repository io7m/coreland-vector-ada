package body vector.magnitude is

  -- C imports

  function vec_magnitude_f (a: vector_f_t; n: ic.int) return scalar_f_t;
  pragma import (c, vec_magnitude_f, "vec_magNf_aligned");

  function vec_magnitude_d (a: vector_d_t; n: ic.int) return scalar_d_t;
  pragma import (c, vec_magnitude_d, "vec_magNd_aligned");

  -- magnitude, in place

  function f (a: in vector_f_t) return scalar_f_t is
  begin
    return vec_magnitude_f (a, ic.int (size));
  end f;

  function d (a: in vector_d_t) return scalar_d_t is
  begin
    return vec_magnitude_d (a, ic.int (size));
  end d;

  pragma inline (f);
  pragma inline (d);

end vector.magnitude;
