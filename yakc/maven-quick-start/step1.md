First step is to create a Maven project using [Maven archetype](https://maven.apache.org/archetype/index.html).

## Task

We start by creating an example project in a directory `maven-quick-start`:
```
mvn archetype:generate \
    -DarchetypeGroupId=com.thepracticaldeveloper \
    -DarchetypeArtifactId=archetype-java-basic-tpd \
    -DarchetypeVersion=1.0.0 \
    -DgroupId="com.example.yakc" \
    -Dversion="1.0-SNAPSHOT" \
    -DartifactId="maven-quick-start" \
    -Darchetype.interactive=false -B
```{{execute}}

We cd into the project's directory:
```
cd maven-quick-start
```{{execute}}