#include <iostream>
#include "../include/helper.h"

int main() {
    int number;

    std::string password = "13Hb*9@jk";

    std::cout << "Hello, CodeQL Demo!" << std::endl;
    std::cout << "Enter a number: ";
    std::cin >> number; // Dangerous use of std::cin
    std::cout << "You entered: " << number << std::endl;

    std::string userInput;
    std::cout << "Enter the file name: ";
    std::cin >> userInput;

    
    // Call the helper function to add the input
    int result = helperFunction(number, userInput);
    std::cout << "Result: " << result << std::endl;
    
    return 0;
}