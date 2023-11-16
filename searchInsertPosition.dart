
class Solution {
  int searchInsert(List<int> nums, int target) {
    int r = nums.length;
    int l = -1;
    int m = 0;
    while(r-l > 1){
      m = ((l+r)/2).ceil();
      if (nums[m]>=target){
        r = m;
      }else{
        l = m;
      }

    }
    if(nums[m] == target){
      return m;
    }else if(nums[m] != target && target<nums[0]){
      return 0;
    }
    else if(nums[m] != target && target > nums[m]){
      return m+1;
    }
    else if(nums[m] != target && target < nums[m]){
      return m;
    }
    else{
      return m+1;
    }

  }
}
void main() {
  Solution solution = Solution();
  print(solution.searchInsert([1,3,5,6,9],8 ));
}