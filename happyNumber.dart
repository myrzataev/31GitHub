class Solution {
  bool isHappy(int n) {
    Set<int> seen = Set();

    while (n != 1 && !seen.contains(n)) {
      seen.add(n);
      n = sumOfSquares(n);
    }

    return n == 1;
  }

  int sumOfSquares(int num) {
    int sum = 0;

    while (num > 0) {
      int digit = num % 10;
      sum += digit * digit;
      num ~/= 10; 
    }

    return sum;
  }
}

void main() {
  Solution solution = Solution();
  print(solution.isHappy(2));
}
