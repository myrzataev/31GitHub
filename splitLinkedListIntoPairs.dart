class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

class Solution {
  List<ListNode?> splitListToParts(ListNode? head, int k) {
    var listAnswer = List<ListNode?>.filled(k, null);

    var x = 0;
    var y = 0;
    var linkedLength = 0;
    var currentlength = 0;
    var h = 0;

    ListNode? current = head;

    // calculate the ListNode length
    while (head != null) {
      linkedLength++;
      head = head.next;
    }
    // calculate the length of each element in ListAnswer
    x = (linkedLength / k).toInt();
    // calculate the extra elment
    y = linkedLength % k;
    while (current != null) {
      if (h >= 0 && linkedLength > k) {
        if (y > 0) {
          currentlength = x + 1;
          y = y - 1;
        } else {
          currentlength = x;
        }
      } else if ((h == 0 || h > 0) && linkedLength < k) {
        currentlength = 1;
      }
      listAnswer[h++] = current;
      for (int i = 0; i < (currentlength - 1); i++) {
        current = current?.next;
      }
      ListNode? temp = current?.next;
      current?.next = null;
      current = temp;
    }
    return listAnswer;
  }
}
