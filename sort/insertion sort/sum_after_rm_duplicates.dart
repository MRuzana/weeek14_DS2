void main(){
  List<int>nums=[1,4,2,5,1,7,7,3,1];
  print('original list = $nums');
  sum(nums);
 
}
sum(List<int>nums){
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
  print('sorted list = $nums');
  List<int> result=[];
  for(int i=0;i<n-1;i++){
   
    if(nums[i]!=nums[i+1]){
      result.add(nums[i]);
    }
  }
  result.add(nums[n-1]);
  print('list after removing duplicates = $result');

  int sum=0;
  for(int item in result){
    sum=sum+item;
  }
  print('sum of all numbers= $sum');

}