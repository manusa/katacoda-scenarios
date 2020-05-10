First step is to create a Maven project using Maven archetype.

## Task

We start by creating an example project in a directory `maven-quick-start`:
```shell script
mvn archetype:generate \
    -DgroupId="com.example.yakc" \
    -DartifactId="maven-quick-start" \
    -DarchetypeGroupId=org.apache.maven.archetypes
```

We ce into the project's directory:
```shell script
cd maven-quick-start
```