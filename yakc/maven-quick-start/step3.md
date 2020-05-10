Next we will add Exec Maven Plugin to be able to easily run our application from Maven.

## Task
Again in the `maven-quick-start/pom.xml`{{open}} file, we'll add the Exec Maven Plugin to the
`<build>` section:
```
<build>
    <!-- Other Build configurations -->
    <plugins>
      <plugin>
        <groupId>org.codehaus.mojo</groupId>
        <artifactId>exec-maven-plugin</artifactId>
        <version>1.2.1</version>
        <executions>
          <execution>
            <goals>
              <goal>java</goal>
            </goals>
            <phase>package</phase>
          </execution>
        </executions>
        <configuration>
          <mainClass>com.example.yakc.App</mainClass>
        </configuration>
      </plugin>
    </plugins>
</build>
```{{copy}}