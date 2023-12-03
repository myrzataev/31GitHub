import 'dart:math';

class Solution {
  bool isPerfectSquare(int num) {
    double res = pow(num, 0.5).toDouble();
    if (res.toInt() == res) {
      return true;
    } else {
      return false;
    }
  }
}

void main(List<String> args) {
  Solution solution = Solution();
  print(solution.isPerfectSquare(14));
}
