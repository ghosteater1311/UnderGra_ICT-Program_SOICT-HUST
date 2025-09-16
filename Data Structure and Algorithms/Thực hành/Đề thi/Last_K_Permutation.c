// Given an integer n, write a program to generate the last k permutations of 1, 2, ..., n in a lexicalgraphic order (elements of a permutation are separated by a SPACE character).
// ////////
//  Note: In C, the terminated command:
// #include <stdlib.h>
// void quit(){
// 	exit(0);
// }
// ////////////
// Input: Two integers: n,k. (n<=10000, k < 1001)
// Output: The last k permutations.

// Example:
// Input:
// 3 2
// Output:
// 3 1 2
// 3 2 1

#include<stdio.h>

int n, k;
int a[10001], used[10001] = {0}, cnt = 0, b[100000], g = 0;

void Try(int i) {
    if (cnt == k) return; 
    for (int j = n; j >= 1; j--) {
        if (used[j] == 0) {
            a[i] = j;
            used[j] = 1;
            if (i == n) {
                for (int j = 1; j <= n; j++) {
                    b[g] = a[j];
                    g++;
                }
                cnt++;
            }
            else Try(i + 1);
            used[j] = 0;
        }
    }
}

int main(int argc, char const *argv[]){
    scanf("%d %d", &n, &k);

    Try(1);
    for (int i = g - 1; i >= 0; i -= n) {
        for (int cv = i - (n - 1); cv <= i; cv++){
            printf("%d ", b[cv]);\
        }
        printf("\n");
    }
    
    return 0;
}