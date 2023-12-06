class Solution {
  bool canFinish(int numCourses, List<List<int>> prerequisites) {
    List<List<int>> adjacencyList = List.generate(numCourses, (_) => []);

    // Build adjacency list
    for (List<int> prerequisite in prerequisites) {
      adjacencyList[prerequisite[1]].add(prerequisite[0]);
    }

    List<int> visited = List.filled(numCourses, 0);

    for (int i = 0; i < numCourses; i++) {
      if (visited[i] == 0 && hasCycle(i, adjacencyList, visited)) {
        return false;
      }
    }

    return true;
  }

  bool hasCycle(int course, List<List<int>> adjacencyList, List<int> visited) {
    visited[course] = 1; // Mark as visiting

    for (int nextCourse in adjacencyList[course]) {
      if (visited[nextCourse] == 1 || (visited[nextCourse] == 0 && hasCycle(nextCourse, adjacencyList, visited))) {
        return true;
      }
    }

    visited[course] = 2; // Mark as visited
    return false;
  }
}

void main() {
  Solution solution = Solution();


  print(solution.canFinish(2, [[1, 0]])); // Output: true


}
