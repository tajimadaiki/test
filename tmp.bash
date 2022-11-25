#!/bin/bash

ng(){
  echo ${1}行目が違うよ
  ret=1
}

ret=0
a=tajima
[ $a = tajima ] || ng "$LINENO"
[ $a = daiki ] || ng "$LINENO"

exit $ret
