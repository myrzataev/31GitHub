int compress(List<String> chars) {
  if (chars.isEmpty) {
    return 0;
  }

  int writeIndex = 0;
  int readIndex = 0;

  while (readIndex < chars.length) {
    String currentChar = chars[readIndex];
    int count = 0;

    while (readIndex < chars.length && chars[readIndex] == currentChar) {
      readIndex++;
      count++;
    }

    chars[writeIndex++] = currentChar;

    if (count > 1) {
      for (String digit in count.toString().split('')) {
        chars[writeIndex++] = digit;
      }
    }
  }

  return writeIndex;
}

void main() {
  List<String> chars1 = ["a", "a", "b", "b", "c", "c", "c"];
  int result1 = compress(chars1);
  print(chars1.sublist(0, result1)); 

  List<String> chars2 = ["a"];
  int result2 = compress(chars2);
  print(chars2.sublist(0, result2)); 

  List<String> chars3 = ["a", "b", "b", "b", "b", "b", "b", "b", "b", "b", "b", "b", "b"];
  int result3 = compress(chars3);
  print(chars3.sublist(0, result3)); 
}
