
void selectionSort(List<int> nums) {
  final int n = nums.length;

  for (int i = 0; i < n - 1; i++) {
    int minIndex = i;
    for (int j = i + 1; j < n; j++) {
      if (nums[j] < nums[minIndex]) {
        minIndex = j;
      }
    }

    if (minIndex != i) {
      int temp = nums[i];
      nums[i] = nums[minIndex];
      nums[minIndex] = temp;
    }
  }
}

void main() {
  // List<int> nums =[4,7,2,1,9,3,6];
  List<int>nums=[3,1,2,7,9,4,6,12,1,2,-2];
  print('Original array: $nums');
  selectionSort(nums);
  print('Sorted array: $nums');
}