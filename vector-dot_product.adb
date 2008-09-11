package body vector.dot_product is

  -- C imports

  function vec_dot_product_f
   (a, b : vector_f_t;
    n    : ic.int) return scalar_f_t;
  pragma import (c, vec_dot_product_f, "vec_dotprodNf_aligned");

  function vec_dot_product_d
   (a, b : vector_d_t;
    n    : ic.int) return scalar_d_t;
  pragma import (c, vec_dot_product_d, "vec_dotprodNd_aligned");

  -- dot_product, in place

  function f (a, b : in vector_f_t) return scalar_f_t is
  begin
    return vec_dot_product_f (a, b, ic.int (size));
  end f;
  pragma inline (f);

  function d (a, b : in vector_d_t) return scalar_d_t is
  begin
    return vec_dot_product_d (a, b, ic.int (size));
  end d;
  pragma inline (d);

end vector.dot_product;
