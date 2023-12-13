class Solution {
  bool judgeCircle(String moves) {
    int u = 0;
    int d = 0;
    int l = 0;
    int r = 0;
    bool res = true;
    if (moves.length % 2 != 0) {
      res = false;
    } else {
      for (int i = 0; i <= moves.length  -1; i++) {
        if (moves[i] == 'U') {
          u++;
        } else if (moves[i] == 'D') {
          d++;
        } else if (moves[i] == 'L') {
          l++;
        } else if (moves[i] == 'R') {
          r++;
        }
      }
      if(u != d || r != l){
        res = false;
      }else{
        res = true;
      }
    }
    return res;
  }
}

void main(List<String> args) {
  Solution solution = Solution();
  print(solution.judgeCircle(""));
}
