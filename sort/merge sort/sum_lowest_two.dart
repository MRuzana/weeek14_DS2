void main(){
  List<int>nums=[3,5,1,8,4,9,13,21];
  print('Original list= $nums');
  nums= merge_sort(nums);
  print('sorted list = $nums');

  int sum=nums[0]+nums[1];
  print('sum of lowest two numbers = $sum');
}

List<int> merge_sort(List<int>nums){
  int n=nums.length;

  if(n<=1){
    return nums;
  }
  int mid=n~/2;
  List<int> left = nums.sublist(0,mid);
  List<int> right = nums.sublist(mid);

  left=merge_sort(left);
  right=merge_sort(right);

  return merge(left,right);
}

List<int> merge(List<int>left,List<int>right){

  int left_index=0;
  int right_index=0;
  List<int>result=[];

  while(left_index < left.length && right_index < right.length){
    if(left[left_index] < right[right_index]){
      result.add(left[left_index]);
      left_index++;
    }
    else{
      result.add(right[right_index]);
      right_index++;
    }
  }

  while(left_index < left.length){
    result.add(left[left_index]);
    left_index++;
  }

  while(right_index < right.length){
    result.add(right[right_index]);
    right_index++;
  }
  return result;
}