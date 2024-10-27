#include <iostream>
#include "calculator.h"

int main() {
    Calculator calc;
    double a = 5.2, b = 3.3;

    std::cout << "5.2 + 3.3 = " << calc.Add(a, b) << std::endl;
    std::cout << "5.2 - 3.3 = " << calc.Sub(a, b) << std::endl;

    return 0;
}