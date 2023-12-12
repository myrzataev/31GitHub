class Solution {
  List<String> findWords(List<String> words) {
    List<String> row = ["qwertyuiop", "asdfghjkl", "zxcvbnm"];
    List<String> result = [];

    for (String word in words) {
      String lowerWord = word.toLowerCase();
      bool inSameRow = true;

      for (int i = 1; i < lowerWord.length; i++) {
        if (!row[0].contains(lowerWord[i]) && row[0].contains(lowerWord[i - 1])) {
          inSameRow = false;
          break;
        } else if (!row[1].contains(lowerWord[i]) && row[1].contains(lowerWord[i - 1])) {
          inSameRow = false;
          break;
        } else if (!row[2].contains(lowerWord[i]) && row[2].contains(lowerWord[i - 1])) {
          inSameRow = false;
          break;
        }
      }

      if (inSameRow) {
        result.add(word);
      }
    }

    return result;
  }
}

void main(List<String> args) {
  Solution solution = Solution();
  print(solution.findWords(["Hello", "Alaska", "Dad", "Peace"]));
}
