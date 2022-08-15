#include <iostream>

void	print(const std::string &str, unsigned line, const char *file)
{
	std::cout << file << ": " << line << "\n";
	std::cout << str << "\n";
}

void	print_exit(const std::string &str, unsigned line, const char *file)
{
	std::cout << file << ": " << line << "\n";
	std::cout << str << "\n";
	exit(1);
}
