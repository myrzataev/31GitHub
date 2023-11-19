class Solution {
  bool containsDuplicate(List<int> nums) {
    List <int> lis = [];
    bool check = false;
    for(int i = 0; i<nums.length; i++){
      if(lis.contains(nums[i])){
        check = true;

      }else{
        lis.add(nums[i]);
      }
    }
    return check;
  }
}
void main() {
  Solution solution = Solution();
  print(solution.containsDuplicate([1,2,3,4]));
}