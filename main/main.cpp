#include "../include1/hello1.h"
#include "../include1/hello2.h"
#include "../include2/hello3.h"

int main()
{
    hello1();
    hello2();
    hello3();
    int a = 4;
    int b = 3;
    std::cout << "Sum a + b = " << sum(a,b) << std::endl;
    int c = 5;
    int d = 10;
    std::cout << "multiplication c * d = " << multiply(c,d) << std::endl;
    int e = 2;
    int f = 0;
    std::cout << "devision e / f = " << divide(e,f) << std::endl;
    return 0;
}