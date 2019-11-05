#include <iostream>
#include "Math/Math.h"

int main()
{
	Math math;

	std::cout << "Hello CMake." << std::endl;
	std::cout << math.sum(1, 10) << std::endl;

	return 0;
}
