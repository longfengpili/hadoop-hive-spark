@REM @Author: longfengpili
@REM @Date:   2023-11-23 11:06:09
@REM @Last Modified by:   longfengpili
@REM Modified time: 2023-11-23 11:18:45


@echo off

echo >>>>>>>>>>>>>>>>>>>>>del containers<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
docker-compose down -v

echo >>>>>>>>>>>>>>>>>>>>>del volumes<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
call bat/mkvolumes.bat

echo >>>>>>>>>>>>>>>>>>>>>build base<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
docker build -t hadoop-hive-spark-base ./base

echo >>>>>>>>>>>>>>>>>>>>>build master<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
docker build -t hadoop-hive-spark-master ./master

echo >>>>>>>>>>>>>>>>>>>>>build worker<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
docker build -t hadoop-hive-spark-worker ./worker

echo >>>>>>>>>>>>>>>>>>>>>build history<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
docker build -t hadoop-hive-spark-history ./history

echo >>>>>>>>>>>>>>>>>>>>>build jupyter<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
docker build -t hadoop-hive-spark-jupyter ./jupyter
