class Node{
  dynamic data;
  Node? next;
  Node(this.data);
}
class Stack{
  Node? top;
  void push(dynamic data){
    Node newnode=Node(data);
    if(top==null){
      top=newnode;
    }
    else{
      newnode.next=top;
      top=newnode;
    }
  }
  void display(){
    Node? current=top;
    while(current!=null){
      print(current.data);
      current=current.next;
    }
  }
}
void main(){
  String name='ruzana is a girl';
  count(name);
   count_vowels(name);
   remove_vowel(name);

  Stack stack=Stack();
   for(int i=0;i<name.length;i++){
    if(name[i]!=' '){
      if(name[i] != 'a'&& 
        name[i] !='e'&&
        name[i] !='i'&&
        name[i] !='o'&&
        name[i] !='u'){
      stack.push(name[i]);
      
    }
    }
   
  }
  stack.display();

}
void count(String name){
 Map<String,int>letter_count={};
 for(int i=0;i<name.length;i++){
  if(name[i]!=' '){
    letter_count[name[i]] = (letter_count[name[i]] ?? 0) + 1;
  }
  
 }
 print(letter_count);
}

void count_vowels(String name){
  int count=0;
  for(int i=0;i<name.length;i++){
    if(name[i]!=' '){
      if(name[i] == 'a'|| 
      name[i]=='e'||
      name[i]=='i'||
      name[i]=='o'||
      name[i]=='u'){
      count++;
    }
    }
    
  }
  print('count of vowels= $count');
}

void remove_vowel(String name){
  List<String>list=[];
  for(int i=0;i<name.length;i++){
    if(name[i]!=' '){
       if(name[i] != 'a'&& 
      name[i] !='e'&&
      name[i] !='i'&&
      name[i] !='o'&&
      name[i] !='u'){
        list.add(name[i]);
      
    }
    }
  }
  print(list);
}
