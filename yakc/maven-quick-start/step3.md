Next we'll modify the default Archetype `App` class to print some information from the Kubernetes 
cluster retrieved using YAKC.

## Task

First we'll open `maven-quick-start/src/main/java/com/example/yakc/App.java`{{open}} file in the editor.

And we'll replace the content with
<pre class="file" data-filename="maven-quick-start/src/main/java/com/example/yakc/App.java" data-target="replace">
package com.example.yakc;

import com.marcnuri.yakc.KubernetesClient;
import com.marcnuri.yakc.api.core.v1.CoreV1Api;

public class App {
    public static void main( String[] args ) {
        try (KubernetesClient kc = new KubernetesClient()) {
          System.out.println("Available Nodes:");
          kc.create(CoreV1Api.class).listNode().stream()
            .forEach(node -> System.out.printf(" - %s (%s)%n", node.getMetadata().getName(), node.getStatus().getNodeInfo().getOperatingSystem()));
          System.out.println("Available Namespaces:");
          kc.create(CoreV1Api.class).listNamespace().stream()
            .forEach(ns -> System.out.printf(" - %s%n", ns.getMetadata().getName()));
          System.out.println("Pods in all Namespaces:");
          kc.create(CoreV1Api.class).listPodForAllNamespaces().stream()
            .forEach(pod -> System.out.printf(" - %-15s %s%n", pod.getMetadata().getNamespace(), pod.getMetadata().getName()));
        } catch (Exception ex) {
          ex.printStackTrace();
        }
    }
}
</pre>

We can now execute the application:
```
mvn package -q
```{{execute}}

The console will print some basic information from the k8s cluster.