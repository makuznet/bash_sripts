#!/bin/bash
# changing version lines preceding a </dependency> line in xml file
awk '/<\/dependency>/{sub("<version>5.0</version>","<version>6.0</version>", last) || sub("<version>1.4</version>","<version>1.5</version>", last)} NR>1{print last} {last=$0} END {print last}' pom.xml > pom_new.xml