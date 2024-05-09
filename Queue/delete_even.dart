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

  void delete_even(){
   print('after deletion');
    if(front==null){
      print('queue empty');
    }

    while(front!=null && front!.data%2==0){
      front=front!.next;
    }
    if (front == null) {
        rear = null; 
        return;
    }
    
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
  queue.enqueue(31);
  queue.display();
  queue.delete_even();
  queue.display();
}