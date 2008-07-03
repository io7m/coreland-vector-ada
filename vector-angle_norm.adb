package body vector.angle_norm is

  -- C imports

  function vec_angle_norm_f (a, b: vector_f_t; n: ic.int) return scalar_f_t;
  pragma import (c, vec_angle_norm_f, "vec_anglenormNf_aligned");

  function vec_angle_norm_d (a, b: vector_d_t; n: ic.int) return scalar_d_t;
  pragma import (c, vec_angle_norm_d, "vec_anglenormNd_aligned");

  -- angle between normalized vectors

  function f (a, b: in vector_f_t) return scalar_f_t is
  begin
    return vec_angle_norm_f (a, b, ic.int (size));
  end f;

  function d (a, b: in vector_d_t) return scalar_d_t is
  begin
    return vec_angle_norm_d (a, b, ic.int (size));
  end d;

  pragma inline (f);
  pragma inline (d);

end vector.angle_norm;
