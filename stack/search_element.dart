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
  void display(){
    Node? current=top;
    while(current!=null){
      print(current.data);
      current=current.next;
    }
  }

  void search(dynamic data){
    Node? current=top;
    if(current==null){
      print('stack is empty');
    }
    while(current!=null){
      if(current.data==data){
        print('found');
        return;
      }
      current=current.next;
    }
    print('not found');
  }

}
void main(){
  Stack stack=Stack();
  stack.push(10);
  stack.push(20);
  stack.push(30);
  stack.push(60);
  stack.push(70);
  stack.display();
  stack.search(10);
}