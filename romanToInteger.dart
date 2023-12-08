int romanToInt(String s) {
  Map<String, int> romanValues = {
    'I': 1,
    'V': 5,
    'X': 10,
    'L': 50,
    'C': 100,
    'D': 500,
    'M': 1000,
  };

  int result = 0;
  int prevValue = 0;

  for (int i = s.length - 1; i >= 0; i--) {
    int currentValue = romanValues[s[i]]!;
    
    if (currentValue < prevValue) {
      result -= currentValue;
    } else {
      result += currentValue;
    }

    prevValue = currentValue;
  }

  return result;
}

void main() {
  print(romanToInt("III"));      // Output: 3
  print(romanToInt("LVIII"));    // Output: 58
  print(romanToInt("MCMXCIV"));  // Output: 1994
}
