/*
 * Project:     PascalTriangle
 * File:        main.cpp
 * Creator:     Tim Shur
 * Date:        1/24/17
 *
 * Description: This program accepts one integer command line argument, num_lines,
 *              and prints that number of rows of Pascal's Triangle. This algorithm
 *              holds all necessary information in one array and adds in-place.
 *
 */

#include <iostream>
#include <cassert>
#include <cstdlib>

using namespace std;

const void printLine(const int num[]);
void nextLine(int num[]);

int main(int argc, char *argv[]) {
    /*
     * Function:         main
     * Pre-condition:    There is exactly one integer command line argument, num_lines, and num_lines >= 0.
     * Post-condition:   [num_lines] rows of Pascal's Triangle are written to the standard output.
     * Big-O Complexity: This algorithm runs about 1 + 2 + 3 + ... + num_lines = num_lines * (num_lines + 1)/2
     *                   many operations. This corresponds to a run-time of O(num_lines^2) or O(n^2). The space
     *                   usage is low, only a single array with length = num_lines. This could be slightly reduced
     *                   by leveraging the symmetry of problem.
     */
    if (argc != 2) {
        cout << "Please run the program with one argument stating the number of lines to be printed." << endl;
        return EXIT_FAILURE;
    }
    int num_lines = atoi(argv[1]); // string argument to number (in cstdlib)
    assert(num_lines >= 0);

    int line[num_lines + 1]; // one extra space to help with terminating loops (0 marker ends a line)
    for (int i = 0; i < num_lines + 1; i++)
        line[i] = 0;

    for (int i = 0; i < num_lines; i++) {
        nextLine(line);
        printLine(line);
    }
    return EXIT_SUCCESS;
}

const void printLine(const int num[]) {
    /*
     * Function:         printLine
     * Post-condition:   One line of Pascal's Triangle, stored in num[], is printed to the standard output.
     * Big-O Complexity: This function runs in O(n) time, where n is the number of entries in the current row.
     *                   Note: n <= len and n = row number.
     */
    int i = 0;
    while(num[i] != 0) { // stops when reaches the first 0 in array
        cout << num[i] << " ";
        i++;
    }
    cout << endl;
}

void nextLine(int num[]) {
    /*
     * Function:         nextLine
     * Pre-condition:    num[] contains enough space for another line (at least one unused (0) position at the end).
     * Post-condition:   num[] contains the data for the next row of Pascal's Triangle.
     * Big-O Complexity: This algorithm runs in O(n) time, where n is the number of entries in the current row.
     */
    int sum, carry, i;
    i = carry = 0;
    while(num[i] != 0) { // can end when we hit 0 since Pascal's Triangle does not contain "0"
        sum = num[i] + carry; // compute the new value for num[i]
        carry = num[i];       // save the current num[i] to carry (for the next computation)
        num[i] = sum;         // overwrite the old value for num[i]
        i++;
    }
    num[i] = 1;               // set the last number to be 1 (sum of 1 and 0).
}
