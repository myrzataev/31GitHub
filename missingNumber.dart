
class Solution {
  int missingNumber(List<int> nums) {
    List<int> ls =[];
    int number = 0;
    nums.sort();

    for(int i = 0; i<=nums.length;i++){
      ls.add(i);
    }
    for(int element in ls ){
      if(nums.contains(element)){

        continue;
      }else{
        number = element;
      }
    }
    return number;
  }
}
void main() {
  Solution solution=Solution();
  print(solution.missingNumber([9,6,4,2,3,5,7,0,1]));
}