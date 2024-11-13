#include <fstream>
#include <ostream>
#include <iostream>
#include "../../include/helper.h"

int helperFunction(int num, const std::string& fileName) {
    // Code for the helper function goes here
    int result = num + 5;

    // Open a file for writing
    std::ofstream outputFile(fileName);

    // Check if the file was opened successfully
    if (outputFile.is_open()) {
        // Write the result to the file
        outputFile << result << std::endl;

        // Close the file
        outputFile.close();
    } else {
        // Failed to open the file
        std::cout << "Failed to open the file for writing." << std::endl;
    }
    return result;
}

