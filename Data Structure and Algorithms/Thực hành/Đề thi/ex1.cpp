// Given set N - (1, 2, 3, ...,. n). Each n-element permutation of set N is represented by the array (a[1]. a[2)..., a[n]). An -element permutation of set N is called perfect
// if each element a[i] (where i = 1, 2...,n) satisfies one of the following two conditions:
// 1) a[i] is divisible by i;
// 2) ¡ is divisible by a[i].
// Input: a positive integer n (1 <= n <= 15).
// Output: The number of perfect n-element permutations of set N.
// Examplel:
// Input:
// 1
// Ouput:
// 1

// Example 2:
// Input:
// 5
// Ouput:
// 10

#include <iostream>

using namespace std;

int n, res = 0;
int a[20];
bool dp[20];

void SOLVE(int k){
    if (k == n + 1){
        res += 1;
        return;
    } 

    for (int i = 1; i <= n; i++){
        if (!dp[i] && (i % k == 0 || k % i == 0)){
            dp[i] = true;
            a[k] = i;
            SOLVE(k + 1);
            dp[i] = false;
        }
    }
}

int main(){
    cin >> n;
    SOLVE(1);
    cout << res;
    return 0;
}