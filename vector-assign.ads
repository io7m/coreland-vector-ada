generic package vector.assign is

  -- assign, in place
  procedure f
   (a : in out vector_f_t;
    b : in vector_f_t);
  pragma inline (f);

  procedure d
   (a : in out vector_d_t;
    b : in vector_d_t);
  pragma inline (d);

end vector.assign;
