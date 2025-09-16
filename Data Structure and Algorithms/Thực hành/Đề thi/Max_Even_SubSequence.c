// Max Even SubSequence
// Description
// Given a sequence of n integers a=a , .., a . A subsequence of a consists of contiguous elements of a (for example, a, a..
// it ...,a). The weight of a subsequence is defined to be the sum of its
// elements. A subsequence is called even-subsequnce if its weight is even. Find the even-subsequence of a having largest weight.
// Input
// • Line 1: contains a positive integer n (1 <= n <= 10%
// • Line 2: contains a , ..., a (-10% <=a. <=10%
// Output
// • The weight of the largest even-subsequence found, or write NOT FOUND if no solution found.
// Example
// Input
// 4
// 1 2-3 4
// Output
// 4

#include <stdio.h>

int n;
int a[1000010];

int max_even_subsequence() {
    int max_weight = -1; 

    for (int i = 0; i < n; i++) {
        int sum = 0;
        for (int j = i; j < n; j++) {
            sum += a[j];
            if (sum % 2 == 0) {
                if (sum > max_weight) {
                    max_weight = sum;
                }
            }
        }
    }

    return max_weight;
}

int main() {
    scanf("%d", &n);
    for (int i = 0; i < n; i++) {
        scanf("%d", &a[i]);
    }

    int res = max_even_subsequence();
    if (res == -1) printf("NOT FOUND");
    else printf("%d", res);

    return 0;
}
