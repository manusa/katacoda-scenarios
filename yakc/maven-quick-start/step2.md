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

Next we need to modify the Jave target version and `<build>` section so that we can run our simple App.
```
<maven.compiler.source>1.8</maven.compiler.source>
<maven.compiler.target>1.8</maven.compiler.target>
```{{copy}}

```
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
```{{copy}}

The final `pom.xml` should look like:

<pre class="file" data-filename="maven-quick-start/pom.xml" data-target="replace">&lt;project xmlns="http://maven.apache.org/POM/4.0.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/xsd/maven-4.0.0.xsd"&gt;
  &lt;modelVersion&gt;4.0.0&lt;/modelVersion&gt;

  &lt;groupId&gt;com.example.yakc&lt;/groupId&gt;
  &lt;artifactId&gt;maven-quick-start&lt;/artifactId&gt;
  &lt;version&gt;1.0-SNAPSHOT&lt;/version&gt;

  &lt;name&gt;maven-quick-start&lt;/name&gt;
  &lt;!-- FIXME change it to the project's website --&gt;
  &lt;url&gt;http://www.example.com&lt;/url&gt;

  &lt;properties&gt;
    &lt;project.build.sourceEncoding&gt;UTF-8&lt;/project.build.sourceEncoding&gt;
    &lt;maven.compiler.source&gt;1.8&lt;/maven.compiler.source&gt;
    &lt;maven.compiler.target&gt;1.8&lt;/maven.compiler.target&gt;
  &lt;/properties&gt;

  &lt;dependencies&gt;
    &lt;dependency&gt;
      &lt;groupId&gt;junit&lt;/groupId&gt;
      &lt;artifactId&gt;junit&lt;/artifactId&gt;
      &lt;version&gt;4.11&lt;/version&gt;
      &lt;scope&gt;test&lt;/scope&gt;
    &lt;/dependency&gt;
    &lt;dependency&gt;
      &lt;groupId&gt;com.marcnuri.yakc&lt;/groupId&gt;
      &lt;artifactId&gt;kubernetes-api&lt;/artifactId&gt;
      &lt;version&gt;0.0.4&lt;/version&gt;
    &lt;/dependency&gt;
    &lt;dependency&gt;
      &lt;groupId&gt;com.marcnuri.yakc&lt;/groupId&gt;
      &lt;artifactId&gt;kubernetes-client&lt;/artifactId&gt;
      &lt;version&gt;0.0.4&lt;/version&gt;
    &lt;/dependency&gt;
  &lt;/dependencies&gt;

  &lt;build&gt;
    &lt;plugins&gt;
      &lt;plugin&gt;
        &lt;groupId&gt;org.codehaus.mojo&lt;/groupId&gt;
        &lt;artifactId&gt;exec-maven-plugin&lt;/artifactId&gt;
        &lt;version&gt;1.2.1&lt;/version&gt;
        &lt;executions&gt;
          &lt;execution&gt;
            &lt;goals&gt;
              &lt;goal&gt;java&lt;/goal&gt;
            &lt;/goals&gt;
            &lt;phase&gt;package&lt;/phase&gt;
          &lt;/execution&gt;
        &lt;/executions&gt;
        &lt;configuration&gt;
          &lt;mainClass&gt;com.example.yakc.App&lt;/mainClass&gt;
        &lt;/configuration&gt;
      &lt;/plugin&gt;
    &lt;/plugins&gt;
  &lt;/build&gt;
&lt;/project&gt;
</pre>