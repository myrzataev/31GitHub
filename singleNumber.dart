class Solution {
  int singleNumber(List<int> nums) {
    int result = 0;

    for (int num in nums) {
      result ^= num;
    }

    return result;
  }
}

void main() {
  Solution solution = Solution();
  print(solution.singleNumber([2, 2, 1]));
}
