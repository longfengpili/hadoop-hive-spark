@REM @Author: longfengpili
@REM @Date:   2023-11-20 18:40:29
@REM @Last Modified by:   longfengpili
@REM Modified time: 2023-11-23 11:14:26

@echo off

echo rm volumes
rm -rf .\volumes

echo mkdir postgresql hadoop
mkdir .\volumes\postgresql\data
mkdir .\volumes\hadoop\dfs\name
mkdir .\volumes\hadoop\dfs\data1
mkdir .\volumes\hadoop\dfs\data2
