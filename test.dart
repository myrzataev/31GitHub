class Solution {
  double myPow(double x, int n) {
     if (n < 0) {
    // Calculate the negative power using a loop
    double result = 1.0;
    for (int i = 0; i < n.abs(); i++) {
      result *= x;
    }
    return 1 / result;
  } else if (n == 0) {
    // Any number to the power of 0 is 1
    return 1.0;
  } else {
    // Calculate the positive power using a loop
    double result = 1.0;
    for (int i = 0; i < n; i++) {
      result *= x;
    }
    return result;
  }
  }
  }


void main() {
  Solution solution = Solution();
  print(solution.myPow(2.0, -2));
}
