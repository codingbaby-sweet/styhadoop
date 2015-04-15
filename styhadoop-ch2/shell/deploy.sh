#!/bin/sh
echo "deploy jar"
rsync -avlH ../target/styhadoop-ch2-1.0.0-SNAPSHOT.jar hduser@localhost:~/test/ch2/
echo "deploy run.sh"
rsync -avlH run.sh hduser@localhost:~/test/ch2/
#echo "change authority"
#ssh hduser@localhost "chmod 755 ~/test/ch2/run.sh"
echo "start run.sh"
ssh hduser@localhost "~/test/ch2/run.sh"