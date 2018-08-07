#!/bin/bash

for i in ./*.txt; do printf "${i}  "; ./Sum.sh ${i}; done | column
