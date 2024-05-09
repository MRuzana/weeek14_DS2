void main(){
  List<int>nums=[3,9,1,32,11,5,8];
  print('original list = $nums');
  nums = merge_sort(nums);
  print('sorted list = $nums');
  int count=0;
  for(int i=0;i<nums.length-1;i++){
    if(nums[i]%2!=0){
      count++;
    }
  }
  print('count of odd numbers = $count');
}
List<int> merge_sort(List<int>nums){
  int n=nums.length;
  int mid=nums.length~/2;
  if(n<=1){
    return nums;
  }

  List<int>left=nums.sublist(0,mid);
  List<int>right=nums.sublist(mid);

  left=merge_sort(left);
  right=merge_sort(right);

  return merge(left, right);
}

List<int>merge(List<int>left,List<int>right){

  int left_index=0;
  int right_index=0;
  List<int>result=[];

  while(left_index<left.length && right_index<right.length){
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