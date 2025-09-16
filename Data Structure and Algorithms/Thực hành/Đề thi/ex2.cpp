// In the class, we already studied the problem the Longest common
// subsequence (ICS) that is defined as follows: "Given 2 sequences X = <xl, ..., Xm and Y =
// SI... J>. A subsequence of sequence A is a sequence obtained by deleting k (k ≥ 0) elements from A. Find the length of the longest common subsequence of X and Y". The following is a variation of the LCS problem: "Each sequence X and Y can contain the wildcard characters "?"., and this wildcard in each different position in the sequence (X or Y) is allowed to "match" with any other character of the remaining sequence. Note: wildcard? of the sequence X must not
// "match" with wildcard character? of the sequence Y, and vice versa.". Let's solve this variation of the LCS problem.
// For example: X = a?bb?da, Y = a?bcdc. We have:
// X = a?bb?da - if the first wildcard matches with "" and second wildcard matches with c
// - then X = aabbeda
// Y = a?bcdc -> if the first wildcard matches with "b" - then Y = abbcdc
// So, the longest common subsequence is abbed, and the length is 5 Input:
// • Line 1: sequence X (with length ≥ 1 and < 50)
// • Line 2: sequence Y (with length ≥ 1 and ≤ 50)
// Output:
// The length of the longest common subsequence of X and Y.

// Example 1:
// a?bb?da a?bcdc
// Output:
// 5

// Example 2:
// Input:
// a?bb?dac a?bcdc?
// Output:
// 6

#include <iostream>
#include <string>

using namespace std;

int max(int a, int b) {
   if (a > b) return a;
   return b;
}

string X, Y;
int n, m;
int dp[100][100];

int main() {
    cin >> X >> Y;
    n = X.length();
    m = Y.length();

    for (int i = 0; i <= n; i++) {
        for (int j = 0; j <= m; j++) {
            if (i == 0 || j == 0) dp[i][j] = 0;
            else if (X[i - 1] == Y[j - 1] || X[i - 1] == '?' || Y[j - 1] == '?') dp[i][j] = dp[i - 1][j - 1] + 1;
            else dp[i][j] = max(dp[i - 1][j], dp[i][j - 1]);
        }
    }
    cout << dp[n][m];
    
    return 0;
}