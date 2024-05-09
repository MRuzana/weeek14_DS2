void main(){
  List<int>nums=[5,2,9,11,6,21,4];
  print('original list = $nums');
  nums = quick_sort(nums);
  print('sorted list = $nums');
}
List<int>quick_sort(List<int>nums){
  int n=nums.length;
  if(n<=1){
    return nums;
  }
  int pivot=nums[n~/2];
  List<int>less=[];
  List<int>greater=[];

  for(int i=0;i<n;i++){
    if(nums[i] < pivot){
      greater.add(nums[i]);
    }
    else if(nums[i] > pivot){
      less.add(nums[i]);
    }
  }
  return [...quick_sort(less),pivot,...quick_sort(greater)];
}