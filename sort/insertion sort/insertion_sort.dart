void main(){
  List<int>nums=[10, 9, 8, 7, 6, 5, 4, 3, 2, 1];
  int n=nums.length;

  insertion_sort(nums,n);
  print('sorted list = $nums');
}

insertion_sort(List<int>nums,int n){

  for(int i=1;i<n;i++){
    int current=nums[i];
    int j=i-1;

    while(j>=0 && nums[j]>current){
      nums[j+1]=nums[j];
      j--;
    }
    nums[j+1]=current;
  }
  return nums;
}

