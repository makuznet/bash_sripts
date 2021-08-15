#!/bin/bash
# printing version lines preceding a </dependency> line in xml file
awk '/<\/dependency>/ { print prv_line; next } { prv_line = $0 }' pom.xml