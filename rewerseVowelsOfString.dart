class Solution {
  String reverseVowels(String s) {
    List<String> ls = s.split('').toList();
    int index = ls.length - 1;
    List<String> vowels = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U'];
    
    for (int i = 0; i <= ls.length - 1; i++) {
      
      if (i <= index) {
        if (vowels.contains(ls[i])) {
          for (int j = index; j >= 0; j--) {
            if (vowels.contains(ls[j])) {
              String temp = ls[i];
              ls[i] = ls[j];
              ls[j] = temp;
              index -= 1;
              break;
            } else {
              index -=1;
              continue;
            }
          }
        } else {
          continue;
        }
      }else{
        break;
      }
    }
    
    return ls.join();
  }
}

void main(List<String> args) {
  Solution solution = Solution();
  print(solution.reverseVowels('race car'));
}
