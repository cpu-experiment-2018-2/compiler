#include <caml/mlvalues.h>
#include <stdio.h>
#include <stdint.h>
#include <caml/alloc.h>

typedef union {
  int32_t i[2];
  double d;
} dbl;

value gethi(value v) {
  dbl d;
  d.d = Double_val(v);
  return copy_int32(d.i[0]);
}

value getlo(value v) {
  dbl d;
  d.d = Double_val(v);
  return copy_int32(d.i[1]);
}
CAMLprim value getint(value v) {
  float f;
  f = Double_val(v);
  int i = *(int *)(&f);
  return Val_int(i);
}
