#!/bin/bash

#pocketsphinx_continuous -inmic yes -lm cmusphinx-voxforge-de.lm -dict cmusphinx-voxforge-de.dic -hmm cmusphinx-de-voxforge-5.2/
pocketsphinx_continuous -infile ../test.wav -lm cmusphinx-voxforge-de.lm.bin -dict cmusphinx-voxforge-de.dic -hmm cmusphinx-de-voxforge-5.2/
