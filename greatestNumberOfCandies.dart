class Solution {
  kidsWithCandies(List<int> candies, int extraCandies) {
    int max = 0;
    List<bool> res = [];
    for (int i in candies) {
      if (i > max) {
        max = i;
      } else {
        continue;
      }
    }
    for (int i in candies) {
      if (i + extraCandies >= max) {
        res.add(true);
      } else {
        res.add(false);
      }
    }
    return res;
  }
}

void main() {
  Solution solution = Solution();
  print(solution.kidsWithCandies([2, 3, 5, 1, 3], 3));
}
