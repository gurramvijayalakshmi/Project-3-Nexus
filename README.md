# Project-3-Nexus
Task Nexus Info Internship 3rd project: Own project(Portifolio)


Showcase your skills and unique ideas to our team I decide to create an Portifolio where i have attached all my previous work i had done in the past and want to show my sample work of web pages.
package com.practicejava;
import java.util.*;

public class Collsetshash {
    public static void main(String[] args) {

        ArrayList<String> arrayList = new ArrayList<>();
        arrayList.add("John");
        arrayList.add("Alice");
        arrayList.add("Bob");
        arrayList.add("John");
        arrayList.add(null);
        displayCollection(arrayList);

        LinkedList<String> linkedList = new LinkedList<>();
        linkedList.add("John");
        linkedList.add("Alice");
        linkedList.add("Bob");
        linkedList.add("John");
        linkedList.add(null);
        displayCollection(linkedList);

        HashSet<String> hashSet = new HashSet<>();
        hashSet.add("John");
        hashSet.add("Alice");
        hashSet.add("Bob");
        hashSet.add("John");
        hashSet.add(null);
        displayCollection(hashSet);
    }


    private static void displayCollection(Collection <String> collection) {
        System.out.println("Collection : " + collection);
        System.out.println("contain duplicates? " + hasDuplicates(collection));
        System.out.println("Can null be added? " + collection.contains(null));
    }

    private static boolean hasDuplicates(Collection <String> collection) {
        Set<String> set = new HashSet<>(collection);
        return set.size() != collection.size();
    }
}
