#include "../include/glob_display.hpp"

void	CHECK_EQUALS(bool cond, bool pcond, unsigned line, const char *file)
{
	if (!cond)
		print_exit("not equal", line, file);
}
