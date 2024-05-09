void main(){
  Map<String,int> details={
    'sam' : 10,
    'ram' : 30,
    'dev' :50
  };
  average(details);
}
void average(Map<String,int>details){
  int total=0;
  details.forEach((key, value) { 
    total=total+value;
    
  });
  int avg=total~/details.length;
  print('avg = $avg');
}