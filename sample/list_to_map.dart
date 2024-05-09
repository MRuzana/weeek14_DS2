void main(){
  List<String>names=['sam','devan','reshma','hani'];
  Map<String,int>result= count(names);
  print(result);
}
Map<String,int> count(List<String>names){
  Map<String,int>result={};
  names.forEach((element) {
    result[element]=element.length;
   });
  return result;
}