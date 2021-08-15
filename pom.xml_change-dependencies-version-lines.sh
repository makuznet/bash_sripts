#!/bin/bash
# changing version lines
awk '{sub("<version>1.4</version>","<version>1.5</version>")}1' pom.xml
