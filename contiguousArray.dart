// class Solution {
//   List<String> findWords(List<String> words) {
//     String first

//   }
// }
// void main(List<String> args) {
//   Solution solution = Solution();
//   solution.findWords(["Hello","Alaska","Dad","Peace"]);
// }
class Solution {
  int findMaxLength(List<int> nums) {
    Map<int, int> sumToIndex = {0: -1}; // Initialize with sum 0 at index -1
    int maxLength = 0;
    int sum = 0;

    for (int i = 0; i < nums.length; i++) {
      sum += (nums[i] == 0) ? -1 : 1;

      if (sumToIndex.containsKey(sum)) {
        maxLength = maxLength > i - sumToIndex[sum]! ? maxLength : i - sumToIndex[sum]!;
      } else {
        sumToIndex[sum] = i;
      }
    }

    return maxLength;
  }
}

void main() {
  Solution solution = Solution();

  // Example 1
  print(solution.findMaxLength([0, 1])); // Output: 2

  // Example 2
  print(solution.findMaxLength([0, 1, 0])); // Output: 2
}
