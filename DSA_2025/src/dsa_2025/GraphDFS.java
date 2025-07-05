/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dsa_2025;
import java.util.LinkedList;
import java.util.Queue;
/**
 *
 * @author yadav
 */
// class to represent a graph using adjancey list
public class GraphDFS {
    
    int vertices;
    LinkedList<Integer>[] adjList;
    // parameterized constructor
    GraphDFS(int vertices){
        this.vertices = vertices;
        adjList = new LinkedList[vertices];
        for(int i = 0; i < vertices; ++i){
            adjList[i] = new LinkedList<>();
        }
    }
    // Function to add an edge to the graph
    void addEdge(int u , int v){
        adjList[u].add(v);
         
    }
    /// Function to perform Breadth firstr search on a graph
    // represent using adjancey list
    void bfs(int startNode){
        // crete a queue for BFS
        Queue<Integer> queue = new LinkedList<>();
        boolean[] visited = new boolean[vertices];
        
        // mark the current node as visited enqueeu it 
        visited[startNode] = true;
        queue.add(startNode);
        
        // Iterate over the queue
        while(!queue.isEmpty()){
            // Deque a vertex from queue and print it 
            int currentNode = queue.poll();
            System.out.println(currentNode+ " ");// 0
            
            // get all adjacent vertice sfo fthe dequeed
            // vertex currentNode If an adjacent has not
// been visited, then mark it visited and
// enqueue it
for(int neighbor : adjList[currentNode]){
    if ( !visited[neighbor]){
    visited[neighbor] = true;
    queue.add(neighbor);
}
}
        }
    }
    
    
}

class Main {
public static void main(String[] args) {
// Number of vertices in the graph
int vertices = 5;
// Create a graph
GraphDFS graph = new GraphDFS(vertices);
// Add edges to the graph
graph.addEdge(0, 1);
graph.addEdge(0, 2);
graph.addEdge(1, 3);
graph.addEdge(1, 4);
graph.addEdge(2, 4);
// Perform BFS traversal starting from vertex 0

    System.out.println("Breadth First Traversal startring from vertix 0: ");
    graph.bfs(0);
}
}
