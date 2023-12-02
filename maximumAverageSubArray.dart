class Solution {
  double findMaxAverage(List<int> nums, int k) {
    int index = k - 1;
    double global_avearge = 0;
    for (int i = 0; i <= nums.length - 1; i++) {
      int local_sum = 0;
      if (i + index <= nums.length - 1) {
        for (int j = i; j <= index; j++) {
          if (k == 1 && nums.length == 1) {
            return nums[i].toDouble();
          } else {
            if (index > nums.length - 1) {
              break;
            } else {
              local_sum += nums[j];
            }
          }
        }
      } else {
        break;
      }

      index++;
      double local_average = local_sum / k;
      if (global_avearge < local_average) {
        global_avearge = local_average;
      } else if (local_average < global_avearge && global_avearge == 0) {
        global_avearge += local_average;
      } else if (local_average < global_avearge && global_avearge < 0) {
        global_avearge = local_average;
      }
    }
    return global_avearge;
  }
}

void main() {
  Solution solution = Solution();
  print(solution.findMaxAverage([1, 12, -5, -6, 50, 3], 4));
  print(solution.findMaxAverage([5], 1));
}
