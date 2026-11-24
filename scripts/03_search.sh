#!/bin/bash
set -e

cd ~/lab0

ls -lR eleon | grep "^-" | sort -k5,5nr | head -n 6

grep -rihE "баринов|софия" eleon | grep -vi "гост" | sort | head -n 5

grep -il "гост" eleon/victor/hall/* eleon/reception/* | wc -l

{ head -q -n 1 eleon/reception/*; tail -q -n 1 eleon/reception/*; } | grep -iE "гост|соф" | sort -r

grep -vi "столик" eleon/reception/all_guests | sort -r | head -n 4 | wc -w

ls -lR . | grep "^-......... 2 " | sort -k9

grep -rilE "баринов|макс" eleon/victor/roof_archive | wc -l
