@REM @Author: longfengpili
@REM @Date:   2023-11-22 17:43:24
@REM @Last Modified by:   longfengpili
@REM Modified time: 2023-11-22 18:05:19


@echo off


REM 检查是否传入了任何参数
if %*=="" (
    set shell_exec=env
) else (
    echo %*
    set shell_exec=%*
)

echo container master=========================================================
docker-compose exec master sh -c %shell_exec%

echo container worker1=========================================================
docker-compose exec worker1 sh -c %shell_exec%

echo container worker2=========================================================
docker-compose exec worker2 sh -c %shell_exec%

echo container history=========================================================
docker-compose exec history sh -c %shell_exec%

echo container jupyter=========================================================
docker-compose exec jupyter sh -c %shell_exec%
