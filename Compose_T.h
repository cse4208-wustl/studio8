// File: Compose_T.h
// Purpose: Unary function composition template declaration for
//          Functional Programming Studio

#pragma once

template <class F, class G> auto compose(F f, G g);

#ifdef TEMPLATE_HEADERS_INCLUDE_SOURCE
#include "Compose_T.cpp"
#endif
