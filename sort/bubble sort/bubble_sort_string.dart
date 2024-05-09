void main(){
  List<String>fruits=['apple','orange','mango','avocado','banana','guava'];
  int n=fruits.length;
  sort(fruits,n);
  print('Sorted list = $fruits');
}
 void sort(List<String>fruits,n){

  if(n==1){
    return n;
  }
  var temp;
  for(int i=0;i<n-1;i++){
    if(fruits[i].compareTo(fruits[i+1]) > 0){
      temp=fruits[i];
      fruits[i]=fruits[i+1];
      fruits[i+1]=temp;
    }
  }
  sort(fruits, n-1);
}

