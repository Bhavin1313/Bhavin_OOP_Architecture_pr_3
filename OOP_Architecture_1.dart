/*1. WAP to take a list using named parameter and return sum of all elements of list.*/
import 'dart:io';

class Sum {
  List<int> l = [];

  void setData() {
    stdout.write("Enter length of list: ");
    int n = int.parse(stdin.readLineSync()!);
    print("Enter elements:");
    for (int i = 0; i < n; i++) {
      l.add(int.parse(stdin.readLineSync()!));
    }
    print("${l}");
  }

  void calculateSum() {
    int sum = 0;
    for (int i = 0; i < l.length; i++) {
      sum += l[i];
    }
    print("Sum of list is: $sum");
    ;
  }
}

void main() {
  Sum sum = Sum();
  sum.setData();
  sum.calculateSum();
}
