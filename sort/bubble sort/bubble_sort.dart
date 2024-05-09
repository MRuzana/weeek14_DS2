void main(){
  List<int> nums=[7,3,8,1,6,31,23,11];
  int n=nums.length;
  bubbleSort(nums,n);
  print(nums);
}
bubbleSort(List<int>nums,int n){
  var temp;
  if(n==1){
    return nums;
  }
  for(int i=0;i<n-1;i++){
    if(nums[i]>nums[i+1]){
      temp=nums[i];
      nums[i]=nums[i+1];
      nums[i+1]=temp;
    }
  }
  bubbleSort(nums, n-1);

}