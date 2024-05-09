class Node{
  dynamic data;
  Node? next;
  Node(this.data);
}
class Stack{
  Node?top;
  
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
  void sum(){
    Node? current=top;
    int sum=0;
    while(current!=null){
      sum=sum+ current.data as int;
      current=current.next;

    }
     print('Sum of  elements of stack = $sum');
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
  Stack stack=Stack();
  stack.push(10);
  stack.push(20);
  stack.push(30);
  stack.sum();
  stack.display();
  
}