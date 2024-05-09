void main(){
  List<int>nums=[2,3,1,2,4,9,1,6];
  List<int>result = selection_sort(nums);
  print('List after removing duplicates = $result');
}
List<int> selection_sort(List<int>nums){
  int n=nums.length;
  for(int i=0;i<n-1;i++){
    int min_index=i;
    for(int j=i+1;j<n;j++){
      if(nums[j]<nums[min_index]){
        min_index=j;
      }
    }
    var temp=nums[i];
    nums[i]=nums[min_index];
    nums[min_index]=temp;
  }
  print('Sorted list = $nums');
  List<int> removed_duplicates=[];

    for(int i=0;i<n-1;i++){
      if(nums[i]!=nums[i+1]){
        removed_duplicates.add(nums[i]);
      }
    }
    removed_duplicates.add(nums[n-1]);
 return removed_duplicates;
}
