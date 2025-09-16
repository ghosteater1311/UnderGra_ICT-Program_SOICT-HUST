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

#include <stdio.h>

int n, cnt = 0;
int a[16];
int check[16];

void TRY(int i) {
    for (int j = 1; j <= n; j++) {
        if (check[j] == 0) {
            if (i % j == 0 || j % i == 0) {
                a[i] = j;
                check[j] = 1;

                if (i == n) cnt++;
                else TRY(i + 1);

                check[j] = 0;
            }
        }
    }
}

int main() {
    scanf("%d", &n);
    TRY(1);
    printf("%d", cnt);
    return 0;
}

