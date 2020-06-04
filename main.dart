class NQueens {
  NQueens(this.n) {
    this._tempBoard = List<int>.generate(n + 1, (i) => -1);
    this.board = List<int>.generate(n + 1, (i) => -1);
  }
  final int n;
  List<int> board;
  List<int> _tempBoard;

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
          isIntialized ? (x - y) == (i - _tempBoard[i]) : false;
//       print("$x,$y, i: $i, board[i]: ${_tempBoard[i]}, LeftDiag: $leftDiag, RightDiag: $rightDiag");
      if (_tempBoard[i] == y || leftDiag || rightDiag) {
        return false;
      }
    }
    return true;
  }

  void solve([int row = 1]) {
    if (row == n + 1) {
      board = List<int>.from(_tempBoard);
//       print(board);
      return;
    }
    for (int col = 1; col <= n; col++) {
      if (_canPlace(row, col)) {
        _tempBoard[row] = col;
//         print("$row, $col");
        solve(row + 1);
      }
//       print("False: $row, $col");
      _tempBoard[row] = -1;
    }
//     solve(row+1);
  }
}

void main() {
  NQueens q = NQueens(4);
  q.solve();
//   print(q.board);
  q.printBoard();
}
