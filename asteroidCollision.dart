class Solution {
  List<int> asteroidCollision(List<int> asteroids) {
    int index = 0;
    int size = 2;

    while (size <= asteroids.length) {
      if (size <= 0 || size == 1) {
        return asteroids;
      } else {
        if (asteroids[index] > 0 && asteroids[index + 1] > 0) {
          index += 1;
          size += 1;
        } else if (asteroids[index] < 0 && asteroids[index + 1] < 0) {
          index += 1;
          size += 1;
        } else {
          if (asteroids[index].abs() > asteroids[index + 1].abs()) {
            asteroids.removeAt(index + 1);
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
    }

    return asteroids;
  }
}

void main() {
  Solution solution = Solution();
  print(solution.asteroidCollision([5, 10, -5]));
  print(solution.asteroidCollision([8, -8]));
  print(solution.asteroidCollision([-2,-1,1,2]));
}
