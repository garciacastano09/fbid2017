#!/bin/bash

#echo SPARK_MASTER_HOST= ${SPARK_MASTER_HOST}
#echo SPARK_MASTER_PORT= ${SPARK_MASTER_PORT}
#echo HDFS_NAMENODE_HOST= ${HDFS_NAMENODE_HOST}
#echo HDFS_NAMENODE_PORT= ${HDFS_NAMENODE_PORT}
#
#cd /home
#java -jar -Xmx1g fbid2017-assembly-0.1.jar ${SPARK_MASTER_HOST} ${SPARK_MASTER_PORT} ${HDFS_NAMENODE_HOST} ${HDFS_NAMENODE_PORT}

/usr/local/spark-2.2.1-bin-hadoop2.7/bin/spark-submit --class "es.jgc.fbid.RunRecommender" --master spark://spark-master:7077 /home/fbid2017-assembly-0.1.jar