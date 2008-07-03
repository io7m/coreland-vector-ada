generic package vector.sum is

  -- horizontal sum
  function f (a: in vector_f_t) return scalar_f_t;
  pragma inline (f);

  function d (a: in vector_d_t) return scalar_d_t;
  pragma inline (d);

end vector.sum;
