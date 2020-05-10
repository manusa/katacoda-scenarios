#!/bin/bash

mvn versions:set-property -Dproperty=maven.compiler.source -DnewVersion=1.8 -DgenerateBackupPoms=false -q
mvn versions:set-property -Dproperty=maven.compiler.target -DnewVersion=1.8 -DgenerateBackupPoms=false -q
