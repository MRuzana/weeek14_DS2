class Node{
  dynamic data;
  Node? next;
  Node(this.data);
}

class Queue{
  Node? front;
  Node? rear;

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
  void sum(){
    Node? current=front;
    int sum=0;
    while(current!=null){
      sum=sum+current.data as int;
      current=current.next;
    }
    print('Sum of elements = $sum');
  }
  void display(){
    Node? current=front;
    while(current!=null){
      print(current.data);
      current=current.next;
    }
  }
}
void main(){
  Queue queue=Queue();
  queue.enqueue(10);
  queue.enqueue(20);
  queue.enqueue(30);
  queue.display();
  queue.sum();
}