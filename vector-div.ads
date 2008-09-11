generic
package vector.div is

  -- div, in place
  procedure f
   (a : in out vector_f_t;
    b : in vector_f_t);
  pragma inline (f);

  procedure d
   (a : in out vector_d_t;
    b : in vector_d_t);
  pragma inline (d);

  -- div, external storage
  procedure f_ext
   (a : in vector_f_t;
    b : in vector_f_t;
    x : out vector_f_t);
  pragma inline (f_ext);

  procedure d_ext
   (a : in vector_d_t;
    b : in vector_d_t;
    x : out vector_d_t);
  pragma inline (d_ext);

end vector.div;
