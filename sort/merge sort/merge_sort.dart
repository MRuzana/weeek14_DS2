void main() {
  List<int> array = [12, 11, 13, 5, 6, 7];
  print("Original list : $array");
  
  array = mergeSort(array);
  
  print("Sorted list : $array");
}

List<int> mergeSort(List<int> array) {
  if (array.length <= 1) {
    return array;
  }
  
  int mid = array.length ~/ 2;
  List<int> left = array.sublist(0, mid);
  List<int> right = array.sublist(mid);
  
  left = mergeSort(left);
  right = mergeSort(right);
  
  return merge(left, right);
}

List<int> merge(List<int> left, List<int> right) {
  List<int> result = [];
  int leftIndex = 0, rightIndex = 0;
  
  while (leftIndex < left.length && rightIndex < right.length) {
    if (left[leftIndex] < right[rightIndex]) {
      result.add(left[leftIndex]);
      leftIndex++;
    } else {
      result.add(right[rightIndex]);
      rightIndex++;
    }
  }
  
  while (leftIndex < left.length) {
    result.add(left[leftIndex]);
    leftIndex++;
  }
  
  while (rightIndex < right.length) {
    result.add(right[rightIndex]);
    rightIndex++;
  }
  
  return result;
}


