#!/bin/sh
if [[ -d sbt ]]; then
  echo "SBT installed"
else
  curl -o sbt.tgz http://scalasbt.artifactoryonline.com/scalasbt/sbt-native-packages/org/scala-sbt/sbt/0.12.2/sbt.tgz
  tar zxvf sbt.tgz sbt
  rm sbt.tgz
fi
