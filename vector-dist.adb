package body vector.dist is

  -- C imports

  function vec_dist_f (x: access vector_f_t; a, b: vector_f_t; n: ic.int) return scalar_f_t;
  pragma import (c, vec_dist_f, "vec_distNf_aligned");

  function vec_dist_d (x: access vector_d_t; a, b: vector_d_t; n: ic.int) return scalar_d_t;
  pragma import (c, vec_dist_d, "vec_distNd_aligned");

  -- distance between two vectors

  function f (a, b: in vector_f_t) return scalar_f_t is
    x: aliased vector_f_t;
  begin
    return vec_dist_f (x'unchecked_access, a, b, ic.int (size));
  end f;

  function d (a, b: in vector_d_t) return scalar_d_t is
    x: aliased vector_d_t;
  begin
    return vec_dist_d (x'unchecked_access, a, b, ic.int (size));
  end d;

  pragma inline (f);
  pragma inline (d);

end vector.dist;
