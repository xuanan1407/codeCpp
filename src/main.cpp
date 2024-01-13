// main.cpp
#include <iostream>
#include "math.h"
#include "english.h"

int main() {
    int result = add(3, 4);
    int result_of_eng = read(4,7);
    std::cout << "Result: " << result << std::endl;
    std::cout << "result_of_eng: " << result_of_eng << std::endl;
    return 0;
}