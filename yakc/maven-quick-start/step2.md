Next we need to add YAKC dependencies to the recently created project.

## Task

Open `maven-quick-start/pom.xml`{{open}} file in the editor.

Find the `<dependencies>` section and add the following YAKC dependencies:

```
  <dependency>
    <groupId>com.marcnuri.yakc</groupId>
    <artifactId>kubernetes-api</artifactId>
    <version>0.0.4</version>
  </dependency>
  <dependency>
    <groupId>com.marcnuri.yakc</groupId>
    <artifactId>kubernetes-client</artifactId>
    <version>0.0.4</version>
  </dependency>
```{{copy}}