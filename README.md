# N Queens Problem
Solving the N Queens problem using Dart.

Refer https://www.geeksforgeeks.org/n-queen-problem-backtracking-3/ for information of the problem and other solutions.

# main.dart

Contains a class NQueens which has 2 fields. 
1. n => Board Size
2. board => Solution List where index correspond to row and value corresponds to column

Methods:
1. _canPlace(int x, int y)
  This method checks whether a queen can be placed at (x,y) of the board
2. solve()
  Updates board with the solution.
3. printBoard()
  Prints the solution board with 1 as Queen and 0 for Empty.
