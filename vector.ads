with interfaces.c;

generic
  size: positive;

package vector is
  package ic renames interfaces.c;

  --
  -- types
  --

  subtype scalar_f_t is ic.c_float;
  subtype scalar_d_t is ic.double;

  type vector_f_t is array (1 .. size) of scalar_f_t;
  type vector_d_t is array (1 .. size) of scalar_d_t;
   for vector_f_t'alignment use 16;
   for vector_d_t'alignment use 16;
  pragma convention (c, vector_f_t);
  pragma convention (c, vector_d_t);

end vector;
