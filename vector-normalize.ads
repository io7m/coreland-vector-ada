generic package vector.normalize is

  -- normalize, in place
  procedure f (a : in out vector_f_t);
  pragma inline (f);

  procedure d (a : in out vector_d_t);
  pragma inline (d);

  -- normalize, external storage

  procedure f_ext (a : vector_f_t; x : out vector_f_t);
  pragma inline (f_ext);

  procedure d_ext (a : vector_d_t; x : out vector_d_t);
  pragma inline (d_ext);

end vector.normalize;
