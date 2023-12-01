int highestAltitude(List<int> gain) {
  int currentAltitude = 0;
  int highestAltitude = 0;

  for (int i = 0; i < gain.length; i++) {
    currentAltitude += gain[i];
    highestAltitude =
        currentAltitude > highestAltitude ? currentAltitude : highestAltitude;
  }

  return highestAltitude;
}

void main() {
  List<int> gain1 = [-5, 1, 5, 0, -7];
  print(highestAltitude(gain1)); // Output: 1

  List<int> gain2 = [-4, -3, -2, -1, 4, 3, 2];
  print(highestAltitude(gain2)); // Output: 0
}
