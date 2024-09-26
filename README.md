# Project-3-Nexus
Task Nexus Info Internship 3rd project: Own project(Portifolio)


Showcase your skills and unique ideas to our team I decide to create an Portifolio where i have attached all my previous work i had done in the past and want to show my sample work of web pages.
import java.util.*;

public class PeopleNamesCollection {

    public static void main(String[] args) {
        // Using ArrayList
        System.out.println("ArrayList Example:");
        ArrayList<String> arrayList = new ArrayList<>();
        arrayList.add("John");
        arrayList.add("Alice");
        arrayList.add("Bob");
        arrayList.add("John"); // Adding duplicate
        arrayList.add(null);   // Adding null
        displayCollection(arrayList);

        // Using LinkedList
        System.out.println("\nLinkedList Example:");
        LinkedList<String> linkedList = new LinkedList<>();
        linkedList.add("John");
        linkedList.add("Alice");
        linkedList.add("Bob");
        linkedList.add("John"); // Adding duplicate
        linkedList.add(null);   // Adding null
        displayCollection(linkedList);

        // Using HashSet
        System.out.println("\nHashSet Example:");
        HashSet<String> hashSet = new HashSet<>();
        hashSet.add("John");
        hashSet.add("Alice");
        hashSet.add("Bob");
        hashSet.add("John"); // Adding duplicate
        hashSet.add(null);   // Adding null
        displayCollection(hashSet);
    }

    // Helper method to display the collection
    private static void displayCollection(Collection<String> collection) {
        System.out.println("Collection contents: " + collection);
        System.out.println("Does collection contain duplicates? " + hasDuplicates(collection));
        System.out.println("Can null be added? " + collection.contains(null));
    }

    // Method to check if a collection has duplicates (works for List but not Set)
    private static boolean hasDuplicates(Collection<String> collection) {
        Set<String> set = new HashSet<>(collection);
        return set.size() != collection.size();
    }
}
