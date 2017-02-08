#include <iostream>
#include <cassert>
#include <vector>

#define MAX_TEST_CASES 100000
#define MAX_TEST_VALUE 10000000000

using namespace std;

// O(m + nlog(m)) ==> O(nlog(m))
// Run time is something like O(nlog(m)), where the largest test value is the mth fibonacci number
// since the largest test value is constant and bounded, the run time is basically O(n).
int main() {
    cout << "Please enter the number of test cases, T, followed by T integers N to test:" << endl;
    unsigned int num_test_cases;
    cin >> num_test_cases;
    assert(cin && num_test_cases > 0 && num_test_cases < MAX_TEST_CASES); // test that T was valid

    // put test_values into an array
    unsigned int *test_values = new unsigned int[num_test_cases];
    int i;
    for (i = 0; i < num_test_cases; i++) {
        cin >> test_values[i]; // assumption that cin is a positive integer
        assert(cin && test_values[i] < MAX_TEST_VALUE); // checks that cin was of type unsigned int (or returns a
        // failbit)
    }
    cout << endl;

    vector<unsigned int> memo;
    unsigned int target, fib_prevprev, fib_prev, fib_cur;
    memo.push_back(0);
    memo.push_back(1); // first two values of fibonacci sequence
    fib_prevprev = 0;
    fib_prev = 1;
    fib_cur = 0; // for iterating to get the next value
    // for each test case, check the memo to see if the value is known by checking last element of memo
    // if value is less than last element, it is known; binary search
    // else, start at last memo-ized item and continue, adding memos along the way
    for (i = 0; i < num_test_cases; i++) {
        target = test_values[i];
        if (target <= memo.back()) { // O(log m)
            // already in memo, do binary search (could be improved with modified bsearch since
            // we know that later values in the array are spaced by higher gaps
            unsigned int lo, mid, hi;
            lo = 0;
            hi = (unsigned int) memo.size() - 1;
            while (hi >= lo) {
                mid = (hi + lo) / 2;
                if (target == memo[mid]) {
                    fib_cur = target;
                    break;
                }
                if (target < memo[mid]) {
                    hi = mid - 1;
                } else {
                    lo = mid + 1;
                }
            }

        } else { // continue search from last item
            do { // O(m) worst case where m
                fib_cur = fib_prevprev + fib_prev;
                memo.push_back(fib_cur); // add next fibonacci number
                fib_prevprev = fib_prev;
                fib_prev = fib_cur;
            } while (target > fib_cur);
        }
        cout << ((target == fib_cur) ? ("IsFibo") : ("IsNotFibo")) << endl;
    }

    return EXIT_SUCCESS; // woohoo!
}