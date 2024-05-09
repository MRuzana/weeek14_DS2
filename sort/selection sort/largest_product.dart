void main(){
  List<int>nums=[3,1,2,7,9,4,6,12];
  print('original list = $nums');
  var result =product(nums);
  print('product of largest two numbers= $result');
}

int product(List<int>nums){
  int n=nums.length;
  for(int i=0;i<n-1;i++){
    int min_index=i;

    for(int j=i+1;j<n;j++){
      if(nums[j]<nums[min_index]){
        min_index=j;
      }
    }  
      if(min_index!=i){
        var temp=nums[i];
        nums[i]=nums[min_index];
        nums[min_index]=temp;
      }
  }
  int product=nums[n-1]*nums[n-2];
  return product;
}

