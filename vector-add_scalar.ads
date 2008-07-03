generic package vector.add_scalar is

  -- add scalar, in place
  procedure f (a: in out vector_f_t; sc: scalar_f_t);
  pragma inline (f);

  procedure d (a: in out vector_d_t; sc: scalar_d_t);
  pragma inline (d);

  -- add scalar, external storage
  procedure f_ext (a: in vector_f_t; x: out vector_f_t; sc: scalar_f_t);
  pragma inline (f_ext);

  procedure d_ext (a: in vector_d_t; x: out vector_d_t; sc: scalar_d_t);
  pragma inline (d_ext);

end vector.add_scalar;
