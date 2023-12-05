class RecentCounter {
  List<int> requests;

  RecentCounter() : requests = [];

  int ping(int t) {
    requests.add(t);

    // Remove requests outside the time frame [t - 3000, t]
    while (requests.isNotEmpty && requests.first < t - 3000) {
      requests.removeAt(0);
    }

    return requests.length;
  }
}

void main() {
  RecentCounter recentCounter = RecentCounter();
}
