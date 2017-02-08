//
// Created by Timothy Shur
// tshur@scu.edu
//
// Sum of Multiples Challenge Solution (two ways)
// 1/27/17
//

#include <iostream>
#include <cassert>
#include <cmath>

using namespace std;

#define MIN_TESTABLE_VALUE 1
#define MAX_TESTABLE_VALUE (int)pow(10, 9)

// macro-defined parameters to allow for a general solution and potential implementation in a function
#define NUM_SMALL 3
#define NUM_BIG 5
#define NUM_LCM 15  // if I needed to compute this, I would find d = gcd(NUM_SMALL, NUM_BIG) by Euclid's Algorithm and
                    // then divide both numbers (e.g., 3 and 5) by d. Multiplying these two quotients yields the lcm.
                    // Proof on request.

// Function:    main
// Description: This function accepts a number, n, from the standard input and outputs the sum of multiples of
//              NUM_SMALL (default = 3) and NUM_BIG (default = 5) below that number. This sum is computed in two ways:
//                  1. A loop which iterates over multiples and runs in O(n) time.
//                  2. An explicit summation which calculates the sum in O(1) time.
int main() {
    // size_t is required because
    size_t n;   // n is the upper bound to sum to.
    size_t sum = 0; // running sum of multiples

    cout << "Please enter a number to sum to: ";
    cin >> n;
    assert(n >= MIN_TESTABLE_VALUE && n <= MAX_TESTABLE_VALUE);

    cout << endl;

    // loop solution
    size_t i;
    for (i = NUM_SMALL; i < n; i += NUM_SMALL) // sum multiples of 3
        sum += i;

    for (i = NUM_BIG; i < n; i += NUM_BIG) {
        if (i % NUM_SMALL != 0)        // sum multiples of 5 but do not double count multiples of 3
            sum += i;
    }

    cout << "Summing all multiples of " << NUM_SMALL << " and " << NUM_BIG << " using a loop..." << endl;
    cout << sum << endl;
    cout << endl;

    // summation solution
    size_t limit_small = (size_t) (ceil(n / (double)NUM_SMALL) - 1);
    size_t limit_big = (size_t) (ceil(n / (double)NUM_BIG) - 1);
    size_t limit_lcm = (size_t) (ceil(n / (double)NUM_LCM) - 1);

    // explicitly calculates the summation of NUM_SMALL*i from i=1 to i=1 to i=limit_small. This is equivalent to
    // the sum of the integers from 1 to limit_small times NUM_SMALL. This is repeated for NUM_BIG and then we subtract
    // the summation of NUM_LCM to remove duplicates. Written work on request.
    sum = (NUM_SMALL*limit_small*(limit_small+1) - NUM_LCM*limit_lcm*(limit_lcm+1) + NUM_BIG*limit_big*(limit_big+1))/2;

    cout << "Summing all multiples of " << NUM_SMALL << " and " << NUM_BIG << " without using a loop..." << endl;
    cout << sum << endl;

    // For testing if the sum ever exceeded maximum value (it does for unsigned int!). I chose to use size_t
    // over an unsigned long because I wanted to make sure I could get the largest range of values possible for
    // the system this program is running on. In either case, an unsigned int is simply way too small for the range
    // of values in this problem.
    //
    // size_t max_size_t = (size_t)-1;
    // cout << max_size_t << endl;
    // unsigned int max_size = (unsigned int) -1;
    // cout << max_size << endl;
    // unsigned long max_size_long = (unsigned long) -1;
    // cout << max_size_long << endl;

    return EXIT_SUCCESS;
}