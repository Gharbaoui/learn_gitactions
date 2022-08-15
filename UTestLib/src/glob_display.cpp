#include <iostream>

void	print(const std::string &str, unsigned line, const char *file)
{
	std::cerr << file << ": " << line << "\n";
	std::cerr << str << "\n";
}

void	print_exit(const std::string &str, unsigned line, const char *file)
{
	std::cerr << file << ": " << line << "\n";
	std::cerr << str << "\n";
	exit(1);
}
