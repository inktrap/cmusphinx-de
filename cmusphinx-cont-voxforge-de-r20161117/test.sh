#!/bin/bash

pocketsphinx_continuous \
    -infile ../test.wav \
    -dict etc/voxforge.dic \
    -lm etc/voxforge.lm.DMP \
    -hmm model_parameters/voxforge.cd_cont_6000

#-lw 10 -feat 1s_c_d_dd -beam 1e-80 -wbeam 1e-40 \
#-wip 0.2 \
#-agc none -varnorm no -cmn current


# feat.params
# sphinx_train.cfg
# voxforge.dic
# voxforge.filler
# voxforge.lm.DMP
# voxforge.phone
# voxforge_test.fileids
# voxforge_test.transcription
# voxforge_train.fileids
# voxforge_train.transcription
