#!/bin/bash

for i in ./*.txt; do echo ${i}; ./Sum.sh ${i}; done
