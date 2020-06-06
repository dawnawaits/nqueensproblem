# N Queens Problem
Solving the N Queens problem using Dart.

You can refer https://www.geeksforgeeks.org/n-queen-problem-backtracking-3/ for information about the problem and other solutions.

Also, shout out to my friend, SamLikesCoding for giving this problem a go. [Here's his code](https://github.com/SamLikesCoding/nQueensDart) in case you wanna check it out.

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
4. isSolved()
  Checks if the board has been solved. If false is returned after Nqueens.solve(), no solution exists.
