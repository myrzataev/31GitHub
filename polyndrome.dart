
class Solution {

  bool isPalindrome(int x) {
    String strX = x.toString();
    bool checked = true;
    int len = strX.length-1;
    // List <int> intX = strX.split('').map((e) => int.parse(e)).toList();
    if (strX.length == 1) {
      return true;
      }else{
          for(int i = 0; i < strX.length - 1 ; i++){
            if(strX[i]==strX[len]){
              checked;
            }else{
              checked = false;
            }
            len -= 1;
          }
        }
      return checked;
  }
}
void main() {
  Solution solution = Solution();
  print(solution.isPalindrome(1000021));
  }