void main(){
  String s='((})){}[]';
  paranthesis(s);
  if(paranthesis(s)){
    print('valid');
  }
  else{
    print('invalid');
  }
 
}
bool paranthesis(String s){
  String s1='()';
  String s2='{}';
  String s3='[]';
  while(s.isNotEmpty){
  if(s.contains(s1)){
    s=s.replaceAll(s1, '');
  }
  else if(s.contains(s2)){
    s=s.replaceAll(s2, '');
  }
  else if(s.contains(s3)){
    s=s.replaceAll(s3, '');
  }
  else{
    return false;
  }
  }
  return true;
}
