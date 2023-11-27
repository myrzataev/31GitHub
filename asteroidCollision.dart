class Solution {
  List<int> asteroidCollision(List<int> asteroids) {
    int index = 1;
    int size = 0;

    while (size <= asteroids.length - 1) {
      if (asteroids[index] > 0 && asteroids[index - 1] > 0) {
        // result.add(asteroids[index]);
        index += 1;
        size += 1;
      } else if (asteroids[index] < 0 && asteroids[index - 1] < 0) {
        // result.add(asteroids[index]);
        index += 1;
        size += 1;
      } else {
        if (asteroids[index].abs() > asteroids[index - 1].abs()) {
          asteroids.removeAt(index - 1);
          index -= 1;
          size -= 1;
        } else if (asteroids[index].abs() < asteroids[index + 1].abs()) {
          asteroids.removeAt(index);
          index -= 1;
          size -= 1;
        } else {
          asteroids.removeAt(index);
          size -= 1;
          asteroids.removeAt(index);
          size -= 1;
        }
      }
    }
    return asteroids;
  }
}

void main() {
  Solution solution = Solution();
  print(solution.asteroidCollision([5, 10, -5]));
  print(solution.asteroidCollision([8, -8]));
  print(solution.asteroidCollision([10, 2, -5]));
}
