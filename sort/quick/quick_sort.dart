void main() {
  List<int> array = [12, 11, 13, 5, 6, 7];
  print("Original array: $array");
  array = quickSort(array);
  print("Sorted array: $array");
  
}

List<int> quickSort(List<int> array) {
  if (array.length <= 1) {
    return array;
  }
  
  int pivot = array[array.length ~/ 2];
  List<int> less = [];
  List<int> greater = [];
  
  for (int i = 0; i < array.length; i++) {
    if (array[i] < pivot) {
      less.add(array[i]);
    } else if (array[i] > pivot) {
      greater.add(array[i]);
    }
  }
  
  return [...quickSort(less), pivot, ...quickSort(greater)];
}

