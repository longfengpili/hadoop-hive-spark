@REM @Author: longfengpili
@REM @Date:   2023-11-20 18:40:29
@REM @Last Modified by:   longfengpili
@REM Modified time: 2023-12-04 15:13:52

@echo off

echo rm volumes
rm -rf .\volumes

echo mkdir postgresql hadoop
mkdir .\volumes\postgresql\data
mkdir .\volumes\hadoop\dfs\name
mkdir .\volumes\hadoop\dfs\data1
mkdir .\volumes\hadoop\dfs\data2

mkdir .\volumes\outputdata
