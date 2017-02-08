#include <iostream>
#include <cassert>

using namespace std;

void zigzag(const string& input, const int& num_lines);
void zigzag(const string& input);

int main() {
    zigzag("COMPUTER", 3);
    zigzag("COMPUTER");

    return EXIT_SUCCESS;
}

void zigzag(const string& input, const int& num_lines) {
    // zigzag method for the general case! Take in a num_lines tall to zig-zag.
    assert(num_lines > 0);
    if (num_lines == 1) { // l0l n1ce try
        cout << input << endl;
        return;
    }

    int period = (num_lines - 1) * 2;
    int i, j, len, anti_i; // anti_i is the index of the other letter in the line (from the upstroke)
    len = (int) input.length(); // int to relieve warning of losing data from unsigned long return type

    for (i = 0; i <= period / 2; i++) {
        j = i;
        while (j < len) {
            cout << input[j];
            if (i != 0 && i != period / 2 && (anti_i = j + period - 2*i) < len) // secret math
                cout << input[anti_i];
            j += period;
        }
    }

    cout << endl;
}

void zigzag(const string& input) {
    // zigzag method for the 3-line case
    int i;
    for (i = 0; i < input.length(); i += 4) // Print top line
        cout << input[i];

    for (i = 1; i < input.length(); i += 2) // Print second line
        cout << input[i];

    for (i = 2; i < input.length(); i += 4)
        cout << input[i];

    cout << endl;
}