#!/bin/bash

<<comment

error handling

comment


mkdir /tmp/devops-test1 || echo "Fail to create directory"

cd /tmp/devops-test1 || echo "Fail to navigate "

touch /tmp/devops-test1/hello-dosto.txt || echo "Fail to create new file"


