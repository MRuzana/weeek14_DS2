void main() {
  sample1();
}
void sample1() {
  Map<String, int> student_details = {
    'sam': 20,
    'dev': 42,
    'ram': 50,
  };
  student_details.forEach((name, marks) {
    print('$name : $marks');
  });
  

  Map<String, int> updated_scores = student_details.map((key, value) {
    return MapEntry(key, value + 10);
  });

  print('updated marks : ');
  updated_scores.forEach((key, value) {
    print('$key : $value');
  });
}

