// Given an integer n, write a program to generate the first k permutations of 1, 2, ..., n in a lexicalgraphic order (elements of a permutation are separated by a SPACE character).

// /////
// Note: In C, the terminated command is:
// #include <stdlib.h>
// void quit(){
// 	exit(0);
// }
// ///////
// Input: Two integers: n,k. (n<=10000)
// Output: The first k permutations.

// Example:
// Input:
// 3 2
// Output:
// 1 2 3 
// 1 3 2

#include <stdio.h>
#include <stdlib.h> 

int n, k; 
int x[100];
int used[100];

void quit(){
	exit(0);
}

void solution(){
    for (int i = 1; i <= n; i++){
        printf("%d ", x[i]);
    }
    printf("\n");
    k--;
    if (k == 0) quit(); 
}

void Try(int k){
    for (int v = 1; v <= n; v++){ 
        if (used[v] == 0){
            x[k] = v;
            used[v] = 1;

            if (k == n) solution();
            else Try(k + 1);

            used[v] = 0;
        }
    }
}

int main(int argc, char const *argv[]){
    scanf("%d %d", &n, &k);

    for (int v = 1; v <= n; v++){
        used[v] = 0;
    }

    Try(1);

    return 0;
}
