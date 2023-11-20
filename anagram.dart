class Solution {
  bool isAnagram(String s, String t) {
    List <String> sList = s.split('').toList();
    List <String> tList = t.split('').toList();
    bool check = true;
    for(String letter in tList){
      if(sList.contains(letter)){
        continue;
      }else{
        check = false;
      }
    }
  return check;
  }
}
void main() {
  Solution solution=Solution();
  print(solution.isAnagram('anagram', 'nagarat'));
}