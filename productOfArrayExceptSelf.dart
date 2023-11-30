class Solution {
  List<int> productExceptSelf(List<int> nums) {
    int index = 0;
    List<int> res = [];
    for (int i = 0; i <= nums.length - 1; i++) {
      int multiplication = 1;
      for (int j = 0; j <= nums.length -1 ; j++) {
        if (i == j) {
          continue;
        } else {
          multiplication *= nums[j];
        }
      }
      if (nums[i] == nums[index]) {
        res.add(multiplication);
      } else {
        continue;
      }
      index++;
    }
    return res;
  }
}

void main() {
  Solution solution = Solution();
  print(solution.productExceptSelf([1, 2, 3, 4]));
  print(solution.productExceptSelf([-1,1,0,-3,3]));
}
