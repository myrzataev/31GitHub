

class Solution {
  List<List<int>> findDifference(List<int> nums1, List<int> nums2) {
    List<int> list1 = [];
    List<int> list2 = [];
    for (int i in nums1) {
      if (nums2.contains(i) || list1.contains(i)) {
        continue;
      } else {
        list1.add(i);
      }
    }
    for (int i in nums2) {
      if (nums1.contains(i) || list2.contains(i)) {
        continue;
      } else {
        list2.add(i);
      }
    }
    List<List<int>>  difference = [list1,list2];
    return difference;
  }
}

main() {
  Solution solution = Solution();
  print(solution.findDifference([1, 2, 3], [2, 4, 6]));
}
