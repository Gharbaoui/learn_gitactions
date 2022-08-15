#ifndef __TESTMACROS__H
#define __TESTMACROS__H

#include "operator_test_functions.hpp"


#define CHECK(condition) \
	CHECK_EQUALS(condition, #condition, __LINE__, __FILE__)

#endif
