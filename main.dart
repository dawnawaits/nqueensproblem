class NQueens {
  NQueens(this.n) {
    this.board = List<int>.generate(n + 1, (i) => -1);
  }
  final int n;
  List<int> board;

  void printBoard() {
    List<List<int>> displayBoard = List<List<int>>.generate(n, (i) {
      return List<int>.generate(n, (i) => 0);
    });
    for (int i = 0; i < n; i++) {
      if (board[i + 1] == -1)
        print("Line ${i + 1} has error");
      else
        displayBoard[i][board[i + 1] - 1] = 1;
    }
    for (int i = 0; i < n; i++) print(displayBoard[i]);
  }

  bool _canPlace(int x, int y) {
    for (int i = 1; i <= n; i++) {
      bool isIntialized = (board[i] != -1);
      bool rightDiag = isIntialized ? (x + y) == (i + board[i]) : false;
      bool leftDiag =
          isIntialized ? (x - y) == (i - board[i]) : false;
      if (board[i] == y || leftDiag || rightDiag) {
        return false;
      }
    }
    return true;
  }

  bool solve([int row = 1]) {
    if (row == n + 1) {
      return true;
    }
    for (int col = 1; col <= n; col++) {
      if (_canPlace(row, col)) {
        board[row] = col;
        if(solve(row + 1))
          return true;
      }
      board[row] = -1;
    }
    return false;
  }
}

void main() {
  NQueens q = NQueens(4);
  q.solve();
  q.printBoard();
}
