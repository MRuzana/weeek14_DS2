class Node{
  dynamic data;
  Node? next; 
  Node(this.data);
}

class Stack{
  Node? top;

  void push(dynamic data){
    Node? newnode=Node(data);
    if(top==null){
      top=newnode;
    }
    else{
      newnode.next=top;
      top=newnode;
    }
  }
  void pop(){
    if(top==null){
      print('stack underflow');
    }
    else{
      top=top!.next;
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
  Stack stack=Stack();
  stack.push(10);
  stack.push(20);
  stack.push(30);
  stack.pop();
  stack.display();
}