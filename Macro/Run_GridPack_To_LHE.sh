#!/bin/bash

WORK_DIR=`pwd`
export CMS_PATH="/cvmfs/cms.cern.ch"
source ${CMS_PATH}/cmsset_default.sh
export SCRAM_ARCH="slc6_amd64_gcc481"

echo "@@ unzip CMSSW @@"
tar -zxvf CMSSW_7_1_16_patch2.tar.gz
cd CMSSW_7_1_16_patch2/src

echo "#### Project Rename ####"
scram build ProjectRename