#/!bin/bash
# SPDX-FileCopyrightText: 2022 Daiki Tajima
# SPDX-License-Identifer: BSD-3-Clause

ng(){
  echo NG at Line $1
  res=1
}

res=0

### I/O test ###
out=$(seq 10 | ./plus)
[ "${out}" = 55 ] || ng $LINENO

### STRANGE INPUT ###
out=$(echo A | ./plus)
[ "$?" = 1 ]        || ng $LINENO
[ "${out}" = "" ]   || ng $LINENO

out=$(echo | ./plus)
[ "$?" = 1 ]        || ng $LINENO
[ "${out}" = "" ]   || ng $LINENO

[ "$res" = 0 ] && echo OK
exit $res
