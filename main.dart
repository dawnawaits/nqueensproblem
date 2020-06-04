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
      displayBoard[i][board[i + 1] - 1] = 1;
      print(displayBoard[i]);
    }
  }

  bool _canPlace(int x, int y) {
    for (int i = 1; i < n; i++) {
      if (board[i] == y ||
          (x - y).abs() == (i - board[i]).abs() ||
          (x + y) == (i + board[i]))
//         print("$x,$y");
        return false;
    }
    return true;
  }

  void solve([int row = 1]) {
    if (row == n + 1) {
      print(board);
      return;
    }
    for (int col = 1; col <= n; col++) {
      if (_canPlace(row, col)) {
        board[row] = col;
        print("$row, $col");
        solve(row + 1);
      }
    }
//     solve(row+1);
  }
}

void main() {
  NQueens q = NQueens(4);
//   print(q.solve());
  q.solve();
  print(q.board);
  q.printBoard();
}
