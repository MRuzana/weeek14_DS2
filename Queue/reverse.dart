class Node{
  dynamic data;
  Node? next;
    Node?prev;
  Node(this.data);
}
class Queue{
  Node? rear;
  Node? front;

  void enqueue(dynamic data){
    Node newnode=Node(data);
    if(rear==null){
      front=rear=newnode;
    }
    else{
      rear!.next=newnode;
      rear=newnode;
    }
  }
  void display(){
    print('original order : ');
    Node?current=front;
    while(current!=null){
      print(current.data);
      current=current.next;
    }
  }
 
  void display_reverse(){
    print('reversed order : ');
    reverse_element(front);

  }
  void reverse_element(Node? current){
    if(current==null){
      return;
    }
    reverse_element(current.next);
    print(current.data);

  }
}
void main(){
  Queue queue=Queue();
  queue.enqueue(10);
  queue.enqueue(20);
  queue.enqueue(30);
  queue.display();
  queue.display_reverse();
  
}