// File: Compose_T.cpp
// Purpose: Unary function composition template definition for
//          Functional Programming Studio

#include "Compose_T.h"

template <class F, class G> auto compose(F f, G g) {
  return [f, g](auto x) { return f(g(x)); };
}
