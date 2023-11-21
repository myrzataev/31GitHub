class Solution {
  int firstUniqChar(String s) {
    List<String> ls = s.split('').toList();
    List<String> map = [];
 int index = -1;
    for (String letter in ls) {
      if (map.contains(letter) == false) {
        map.add(letter);
      } else {
        if (map != 0) {
          map.remove(letter);
        }else{
          index = -1;
        }
      }
    }
    if (map.length == 0) {
      return index;
    } else {
      return index = ls.indexOf(map[0]);
    }
  }
}

void main() {
  Solution solution = Solution();
  print(solution.firstUniqChar('aabb'));
}
