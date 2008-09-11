generic package vector.zero is

  -- zero
  procedure f (a : in vector_f_t);
  pragma inline (f);

  procedure d (a : in vector_d_t);
  pragma inline (d);

end vector.zero;
