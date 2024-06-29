#include "../include1/hello2.h"

void hello2() {
    std::cout << "Hello 2" << std::endl;
}

double divide(double a, double b) {
    if (b == 0) {
        std::cout << "Invalid division" << std::endl;
        return 0.0;
    } else {
        return a / b;
    }
}
