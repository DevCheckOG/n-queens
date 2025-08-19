#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdbool.h>

void solve(int n, int row, int* cols, char**** result, int* returnSize, int** returnColumnSizes) {
    if (row == n) {

        char** board = malloc(n * sizeof(char*));

        for (int i = 0; i < n; i++) {
            board[i] = malloc(n + 1);
            memset(board[i], '.', n);
            board[i][cols[i]] = 'Q';
            board[i][n] = '\0';
        }

        (*returnSize)++;
        *result = realloc(*result, *returnSize * sizeof(char**));
        (*returnColumnSizes) = realloc(*returnColumnSizes, *returnSize * sizeof(int));
        (*returnColumnSizes)[*returnSize - 1] = n;
        (*result)[*returnSize - 1] = board;

        return;
    }
    
    for (int col = 0; col < n; col++) {
        bool valid = true;

        for (int i = 0; i < row; i++) {
            if (cols[i] == col || cols[i] - i == col - row || cols[i] + i == col + row) {
                valid = false;
                break;
            }
        }

        if (valid) {
            cols[row] = col;
            solve(n, row + 1, cols, result, returnSize, returnColumnSizes);
        }
    }

}

char*** solveNQueens(int n, int* returnSize, int** returnColumnSizes) {

    int* cols = malloc(n * sizeof(int));
    char*** result = malloc(0);

    *returnSize = 0;
    *returnColumnSizes = malloc(0);

    solve(n, 0, cols, &result, returnSize, returnColumnSizes);
    free(cols);

    return result;
}

const int main(void) {
    int n = 4;
    int returnSize;
    int* returnColumnSizes;
    char*** result = solveNQueens(n, &returnSize, &returnColumnSizes);
    
    for (int i = 0; i < returnSize; i++) {
        printf("Solution %d:\n", i + 1);
        for (int j = 0; j < n; j++) printf("%s\n", result[i][j]);
        printf("\n");
    }
    
    for (int i = 0; i < returnSize; i++) {
        for (int j = 0; j < n; j++) free(result[i][j]);
        free(result[i]);
    }

    free(result);
    free(returnColumnSizes);
    
    return 0;
}
