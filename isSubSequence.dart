bool isSubsequence(String s, String t) {
  int i = 0, j = 0;

  while (i < s.length && j < t.length) {
    if (s[i] == t[j]) {
      i++;
    }
    j++;
  }

  return i == s.length;
}

void main() {
  String s1 = "abc";
  String t1 = "ahbgdc";
  print(isSubsequence(s1, t1)); 

  String s2 = "axc";
  String t2 = "ahbgdc";
  print(isSubsequence(s2, t2));  
}
