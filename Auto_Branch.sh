#!/bin/bash
# 1.copy local project to new file;2.create new branch
function auto_create_copy()
{
  srcPath=$1
  OLD_IFS="$IFS"
  IFS="/"
  array=($srcPath)
  IFS="$OLD_IFS"
  arr_length=${#array[*]}
  lastObj=${arr_number[arr_length-1]}
  echo 'Gcash Project name: '$lastObj
  cd $srcPath
  git status
  # for var in ${array[@]}
  # do
  #   echo $var
  # done
  localBranchName=$2
  basePath='/Users/huweitao/Desktop/projectname'
  tmpPath=$basePath'/tmp'
  echo 'Source path: '$srcPath
  echo 'BasePath: '$basePath
  cd $basePath
  # manully write project file name
  featureFileName='NeedFileName_'$2
  featurePath=$basePath'/'$featureFileName
  echo 'Feature local Path: '$featurePath
  # mkdir $featureFileName
  echo 'Feature File Name: '$featureFileName
  echo 'Copy begin from '$srcPath' to '$featurePath
  cp -r $srcPath $featurePath
  chmod -R 777 $featurePath
  branchFullName='feature/'$localBranchName
  echo 'Branch Name:'$branchFullName
  cd $featurePath
  # #  如果分支存在则只切换分支，若不存在则创建并切换到branchFullName分支
  git checkout -b $branchFullName
  # change Git name
  git config user.name yourname
  git config user.email your email
}

if [ $# -eq 2 ]; then
  auto_create_copy $1 $2
else
  echo 'Enter local branch feature name: format is like feature/your_feature_name'
  read localBranchName

  echo 'Enter local project dir:'
  read srcPath
  auto_create_copy $srcPath $localBranchName
fi



