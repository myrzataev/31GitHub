class Solution {
  bool increasingTriplet(List<int> nums) {
    double first = double.infinity;
    double second = double.infinity;

    for (int num in nums) {
      if (num <= first) {
        first = num.toDouble();
      } else if (num <= second) {
        second = num.toDouble();
      } else {
        return true;
      }
    }

    return false;
  }
}

void main() {
  Solution solution = Solution();
  print(solution.increasingTriplet([1, 2, 3, 4, 5]));
}
