Next we need to add YAKC dependencies to the recently created project.

## Task

Open `maven-quick-start/pom.xml`{{open}} file in the editor.

Find the `<dependencies>` section and add the following YAKC dependencies:

<pre class="file" data-filename="pom.xml" data-target="</dependencies>">
      &lt;!-- Other project dependencies --&gt;
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
</pre>