class Node{
  dynamic data;
  Node? front;
  Node? rear;
  Node? next;
  Node(this.data);
}
class Queue{
  Node? front;
  Node? rear;

  void enqueue(dynamic data){
    Node? newnode=Node(data);
    if(rear==null){
      front=rear=newnode;
      return;
    }
    
    else{
     rear!.next=newnode;
     rear=newnode;

    }
  }
  void dequeue(){
    if(front==null){
      print('queue empty');
    }
      front=front!.next;
      if(front==null){
        rear=null;
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
  queue.enqueue(30);
  queue.dequeue();
  queue.display();
}