#!/bin/sh
echo "add jar to classpath"
export HADOOP_CLASSPATH=~/test/ch2/styhadoop-ch2-1.0.0-SNAPSHOT.jar

/usr/local/hadoop/bin/hdfs dfs -rm -r input
/usr/local/hadoop/bin/hdfs dfs -rm -r output
/usr/local/hadoop/bin/hdfs dfs -mkdir -p input
/usr/local/hadoop/bin/hdfs dfs -put ~/test/ch2/data/* input/

#echo "MaxTemperature"
#hadoop com.sweetop.styhadoop.MaxTemperature   input/  output/

#echo "MaxTemperatureWithCompression"
#hadoop jar styhadoop-ch2-1.0.0-SNAPSHOT.jar com.sweetop.styhadoop.MaxTemperatureWithCompression input/190*  output/

echo "WordCount"
/usr/local/hadoop/bin/hadoop jar ~/test/ch2/styhadoop-ch2-1.0.0-SNAPSHOT.jar com.sweetop.styhadoop.WordCount input/file*  output/

/usr/local/hadoop/bin/hdfs dfs -cat output/*