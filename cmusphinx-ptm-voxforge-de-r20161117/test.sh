#!/bin/bash

pocketsphinx_continuous \
    -infile ../test.wav \
    -hmm model_parameters/voxforge.cd_cont_5000 \
    -dict etc/voxforge.dic \
    -lm etc/voxforge.lm.DMP 
#-lw 10 -feat 1s_c_d_dd -beam 1e-80 -wbeam 1e-40 \
#-wip 0.2 \
#-agc none -varnorm no -cmn current

