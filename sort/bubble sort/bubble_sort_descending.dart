void main(){
  List<int>nums=[1,5,2,9,3,10,8,0];
  int n=nums.length;

  sort_descending(nums,n);
  print('sorted list in descending order = $nums');
}
void sort_descending(List<int>nums,n){
  if(n==1){
    return n;
  }
  for(int i=0;i<n-1;i++){
    if(nums[i]<nums[i+1]){
      var temp=nums[i];
      nums[i]=nums[i+1];
      nums[i+1]=temp;
    }
  }
  sort_descending(nums, n-1);

}