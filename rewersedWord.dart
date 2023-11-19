class Solution {
  String reverseWords(String s) {
    List<String> words = [];
    int start = 0;

    for (int i = 0; i < s.length; i++) {
      if (s[i] != ' ' && (i == 0 || s[i - 1] == ' ')) {
        start = i;
      }

      if (s[i] != ' ' && (i == s.length - 1 || s[i + 1] == ' ')) {
        words.insert(0, s.substring(start, i + 1));
      }
    }

    return words.join(' ');
  }
}

void main() {
  Solution solution = Solution();
  print(solution.reverseWords('  Hello world '));
}
