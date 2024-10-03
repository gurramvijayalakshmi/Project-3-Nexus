# Project-3-Nexus
Task Nexus Info Internship 3rd project: Own project(Portifolio)


Showcase your skills and unique ideas to our team I decide to create an Portifolio where i have attached all my previous work i had done in the past and want to show my sample work of web pages.


Inserting a node at the tail of the linked list
class Node {
   int data;
   Node next;


   Node(int data) {
       this.data = data;
       this.next = null;
   }
}


class LinkedList {
   Node head;


   public void insertAtTail(int data) {

       Node newNode = new Node(data);


       if (head == null) {
           head = newNode;
       } else {

           Node current = head;
           while (current.next != null) {
               current = current.next;
           }

           current.next = newNode;
       }
   }


   public void printList() {
       Node current = head;
       while (current != null) {
           System.out.print(current.data + " ");
           current = current.next;
       }
       System.out.println();
   }
}


public class Main {
   public static void main(String[] args) {
       LinkedList list = new LinkedList();

        
       int[] values = {141, 302, 164, 530, 474};


       for (int value : values) {
           list.insertAtTail(value);
       }


       list.printList();
   }
}
2.Inserting a node at the head of the linked list
package Linked_list;


class Node {
   int data;
   Node next;
 
   Node(int data) {
       this.data = data;
       this.next = null;
   }
}


class LinkedList {
   Node head;


   public void insertAtHead(int data) {

       Node newNode = new Node(data);


       newNode.next = head;


       head = newNode;
   }


   public void printList() {
       Node current = head;
       while (current != null) {
           System.out.print(current.data + " ");
           current = current.next;
       }
       System.out.println();
   }
}


public class Deletion {
   public static void main(String[] args) {
       LinkedList list = new LinkedList();


       int[] values = {383, 484, 392, 975, 321};


       for (int value : values) {
           list.insertAtHead(value);
       }

       
       list.printList();
   }
}
3. Insert a node at a specific position
 
class Node {
    int data;  
    Node next;  

    Node(int data) {
        this.data = data;
        this.next = null; // Initially, the next node is null
    }
}
 
class LinkedList {
    Node head; // Head of the list
 
 
    public void insertAtPosition(int data, int position) {
        Node newNode = new Node(data);
        if (position == 0) {
            newNode.next = head;
            head = newNode;
            return;
        }
        Node current = head;
        for (int i = 0; i < position - 1; i++) {
            if (current == null) {
                throw new IndexOutOfBoundsException("Position out of bounds");
            }
            current = current.next;
        }
        newNode.next = current.next;
        current.next = newNode;
    }
    public void printList() {
        Node current = head;
        while (current != null) {
            System.out.print(current.data + " ");
            current = current.next;
        }
        System.out.println();
    }
}

public class Main {
    public static void main(String[] args) {
        LinkedList list = new LinkedList();
        int[] values = {16, 13, 7};
        for (int value : values) {
            list.insertAtPosition(value, list.head == null ? 0 : list.head.next == null ? 1 : 2);
        }
        list.insertAtPosition(1, 2);
         list.printList();
    }
}



4.Tree Preorder traversal
class Node {
    int data;
    Node left, right;
    Node(int d) {
        data = d;
        left = null;
        right = null;
    }
}
class BinaryTree {
    Node root;
    void preOrder(Node node) {
        if (node == null) {
            return;
        }
        System.out.print(node.data + " ");
        preOrder(node.left);
        preOrder(node.right);
    }
    void preOrderTraversal() {
        preOrder(root);
    }
}
public class Main {
    public static void main(String[] args) {
        BinaryTree tree = new BinaryTree();
        tree.root = new Node(1);
        tree.root.right = new Node(2);
        tree.root.right.right = new Node(5);
        tree.root.right.right.left = new Node(3);
        tree.root.right.right.right = new Node(6);
        tree.root.right.right.left.right = new Node(4);
        tree.preOrderTraversal();
    }
}
5. Reverse the element of a linked list.
 

class Node {
    int data;  
    Node next;  
    Node(int data) {
        this.data = data;
        this.next = null;  
    }
}

 
class LinkedList {
    Node head;  
       public void reverse() {
        Node prev = null;
        Node current = head;
        Node next = null;

        while (current != null) {
            next = current.next;  
            current.next = prev;  
            prev = current;  
            current = next;
        }
        head = prev;  
    }
    public void printList() {
        Node current = head;
        while (current != null) {
            System.out.print(current.data + " ");
            current = current.next;
        }
        System.out.println();
    }
}
public class Main {
    public static void main(String[] args) {
        LinkedList list = new LinkedList();
        int[] values = {1, 2, 3, 4, 5};
        for (int value : values) {
            list.insertAtTail(value);
        }
        System.out.println("Original list:");
        list.printList();
        list.reverse();
        System.out.println("Reversed list:");
        list.printList();
    }
}
