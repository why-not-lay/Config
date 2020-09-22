#!/bin/bash

#输入的参数为1个有效
if (( $# == 1 )) ; then
  case $1 in
    java ) 
      echo "开始创建项目"
      mkdir lib
      mkdir src
      mkdir target
      cp $HOME/config_file/template/Makefile.java.tp ./src/Makefile
      touch ./src/Run.java
      echo "创建完成"
      ;;
    cpp ) 
      echo "开始创建项目"
      mkdir include
      mkdir src
      cp $HOME/config_file/template/Makefile.cpp.tp ./src/Makefile
      echo "创建完成"
      ;;
    * ) echo "输入不符合要求"
  esac
else
  echo "参数个数有误"
fi
