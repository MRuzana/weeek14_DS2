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
  void count_odd(){
    Node? current=top;
    int count=0;
    while(current!=null){
      if(current.data%2!=0){
        count++;
      }
      current=current.next;
    }
    print('count of odd numbers = $count');
  }
}
void main(){
  Stack stack=Stack();
  stack.push(10);
  stack.push(22);
  stack.push(32);
  stack.display();
  stack.count_odd();
}