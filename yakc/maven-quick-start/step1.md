First step is to create a Maven project using Maven archetype.

## Task

We start by creating an example project in a directory `maven-quick-start`:
```
mvn archetype:generate \
    -DgroupId="com.example.yakc" \
    -Dversion="1.0-SNAPSHOT"
    -DartifactId="maven-quick-start" \
    -DarchetypeGroupId=org.apache.maven.archetypes \
    -DarchetypeId=org.apache.maven.archetypes \
    -Darchetype.interactive=false
```{{execute}}

We ce into the project's directory:
```
cd maven-quick-start
```{{execute}}