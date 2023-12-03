void main(List<String> args) {
  Solution solution = Solution();
  print(solution.mySqrt(1));
}

class Solution {
  int mySqrt(int x) {
    int i = 1;
    int t = 0;

    while (i <= x) {
      int res = i * i;
      if (res == x) {
        t = i;
        break;
      } else if (res > x) {
        t = i - 1;
        break;
      }
      i++;
    }

    return t;
  }
}
