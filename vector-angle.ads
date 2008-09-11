generic package vector.angle is

  -- angle
  function f (a, b : in vector_f_t) return scalar_f_t;
  pragma inline (f);

  function d (a, b : in vector_d_t) return scalar_d_t;
  pragma inline (d);

end vector.angle;
