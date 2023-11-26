import 'dart:math';

class Solution {
  String removeStars(String s) {
    int index = 0;
    if (s.length-1 <= pow(10, 5)) {
      while (index <= s.length - 1) {
        if (s[index] == '*') {
          s = s.substring(0, index-1) + s.substring(index+1);
          index = 0;
        } else {
          index += 1;
        }
      }
    }else{
      return 'Runtime error';
    }
    return s;
  }
}

void main() {
  Solution solution = Solution();
  print(solution.removeStars('leet**cod*e'));
}

