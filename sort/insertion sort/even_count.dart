void main(){
  List<int>nums=[2,4,1,9,6,11,21,20];
  int result= count_even(nums);
  print('Sorted list = $nums');
  print('count of even numbers = $result');
}
int count_even(List<int>nums){
  int n=nums.length;
  for(int i=1;i<n;i++){
    int current=nums[i];
    int j=i-1;
    while(j>=0 && nums[j]>current){
      nums[j+1]=nums[j];
      j--;
    }
    nums[j+1]=current;
  }
  int count=0;
  for(int number in nums){
    if(number%2==0){
      count++;
    }
  }
  return count;
}