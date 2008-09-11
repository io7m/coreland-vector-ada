generic package vector.dot_product is

  -- dot_product
  function f (a, b : in vector_f_t) return scalar_f_t;
  pragma inline (f);

  function d (a, b : in vector_d_t) return scalar_d_t;
  pragma inline (d);

end vector.dot_product;
