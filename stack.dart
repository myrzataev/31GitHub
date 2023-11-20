class MyStack {
  List<int?> queue1;
  List<int?> queue2;

  MyStack()
      : queue1 = [],
        queue2 = [];

  void push(int x) {
    while (queue1.isNotEmpty) {
      queue2.add(queue1.first);
      queue1 = queue1.length > 1 ? queue1.sublist(1) : [];
    }
    queue1.add(x);

    while (queue2.isNotEmpty) {
      queue1.add(queue2.first);
      queue2 = queue2.length > 1 ? queue2.sublist(1) : [];
    }
  }

  int? pop() {
    if (queue1.isEmpty) {
      return null;
    }

    int? top = queue1.first;
    queue1 = queue1.length > 1 ? queue1.sublist(1) : [];
    return top;
  }

  int? top() {
    if (queue1.isEmpty) {
      return null;
    }

    return queue1.first;
  }

  bool empty() {
    return queue1.isEmpty;
  }
}

void main() {
   MyStack stack = MyStack();
  print(stack.push(1)); // null
  print(stack.push(2)); // null
  print(stack.top());   // 2
  print(stack.pop());   // 2
  print(stack.empty()); 
}
