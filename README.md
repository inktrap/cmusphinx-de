# cmusphinx-de

## Goal

I want to make it easier to use cmusphinx. I would like to use it with german
language data. I am using ``0.8+5prealpha-2`` as it is included in debian
testing.


## Audio Data

For testing purposes I downloaded an example in flac format from
[voxforge](http://www.repository.voxforge1.org/downloads/de/Trunk/Audio/Main/16kHz_16bit/)
and changed the format with:

~~~
sox test.flac -r 16000 test.wav
~~~

see [the faq on the sample
rate](http://cmusphinx.sourceforge.net/wiki/faq#qwhat_is_sample_rate_and_how_does_it_affect_accuracy)
however I only did this to preserve the sample rate and to get a wav file.

# Models

## Official Model

 - [request for help on sourceforge](https://sourceforge.net/p/cmusphinx/discussion/help/thread/289d32e1/)
 - I tried it with the stable models from [sourceforge](https://sourceforge.net/projects/cmusphinx/files/Acoustic%20and%20Language%20Models/German/) by running the included ``test.sh``. I am not getting an error, but the result is completely wrong: ``rawls wir feiern``, with:

~~~
... long list of output ...
INFO: ngram_search.c(467): Resized score stack to 200000 entries
INFO: ngram_search.c(459): Resized backpointer table to 10000 entries
INFO: cmn_prior.c(131): cmn_prior_update: from <  8.00  0.00  0.00  0.00  0.00  0.00  0.00  0.00  0.00  0.00  0.00  0.00  0.00 >
INFO: cmn_prior.c(149): cmn_prior_update: to   < 45.11  8.09 -10.98 13.57 -0.91 -7.97  3.55 -7.29  0.96  1.32 -2.45 -4.99 -2.84 >
INFO: ngram_search_fwdtree.c(1553):     6870 words recognized (16/fr)
INFO: ngram_search_fwdtree.c(1555):   620995 senones evaluated (1489/fr)
INFO: ngram_search_fwdtree.c(1559):  1015085 channels searched (2434/fr), 101497 1st, 169285 last
INFO: ngram_search_fwdtree.c(1562):    11155 words for which last channels evaluated (26/fr)
INFO: ngram_search_fwdtree.c(1564):    30741 candidate words for entering last phone (73/fr)
INFO: ngram_search_fwdtree.c(1567): fwdtree 0.91 CPU 0.218 xRT
INFO: ngram_search_fwdtree.c(1570): fwdtree 0.91 wall 0.218 xRT
INFO: ngram_search_fwdflat.c(302): Utterance vocabulary contains 277 words
INFO: ngram_search_fwdflat.c(948):     2884 words recognized (7/fr)
INFO: ngram_search_fwdflat.c(950):   271974 senones evaluated (652/fr)
INFO: ngram_search_fwdflat.c(952):   350208 channels searched (839/fr)
INFO: ngram_search_fwdflat.c(954):    24913 words searched (59/fr)
INFO: ngram_search_fwdflat.c(957):    15461 word transitions (37/fr)
INFO: ngram_search_fwdflat.c(960): fwdflat 0.32 CPU 0.078 xRT
INFO: ngram_search_fwdflat.c(963): fwdflat 0.33 wall 0.078 xRT
INFO: ngram_search.c(1253): lattice start node <s>.0 end node </s>.413
INFO: ngram_search.c(1279): Eliminated 1 nodes before end node
INFO: ngram_search.c(1384): Lattice has 216 nodes, 124 links
INFO: ps_lattice.c(1380): Bestpath score: -19195
INFO: ps_lattice.c(1384): Normalizer P(O) = alpha(</s>:413:415) = -1112825
INFO: ps_lattice.c(1441): Joint P(O,S) = -1136313 P(S|O) = -23488
INFO: ngram_search.c(875): bestpath 0.00 CPU 0.000 xRT
INFO: ngram_search.c(878): bestpath 0.00 wall 0.000 xRT
rawls wir feiern
INFO: cmn_prior.c(131): cmn_prior_update: from < 45.11  8.09 -10.98 13.57 -0.91 -7.97  3.55 -7.29  0.96  1.32 -2.45 -4.99 -2.84 >
INFO: cmn_prior.c(149): cmn_prior_update: to   < 45.11  8.09 -10.98 13.57 -0.91 -7.97  3.55 -7.29  0.96  1.32 -2.45 -4.99 -2.84 >
INFO: ngram_search_fwdflat.c(302): Utterance vocabulary contains 0 words
INFO: ngram_search_fwdtree.c(432): TOTAL fwdtree 0.91 CPU 0.219 xRT
INFO: ngram_search_fwdtree.c(435): TOTAL fwdtree 0.91 wall 0.219 xRT
INFO: ngram_search_fwdflat.c(176): TOTAL fwdflat 0.32 CPU 0.078 xRT
INFO: ngram_search_fwdflat.c(179): TOTAL fwdflat 0.33 wall 0.078 xRT
INFO: ngram_search.c(303): TOTAL bestpath 0.00 CPU 0.000 xRT
INFO: ngram_search.c(306): TOTAL bestpath 0.00 wall 0.000 xRT
~~~


## Gooofy

 - issue on [github](https://github.com/gooofy/nlp/issues/3)
 - I tried to use [gooofy](https://github.com/gooofy)'s [models](http://goofy.zamia.org/voxforge/de/): ``cmusphinx-cont-voxforge-de-r20161117`` and ``cmusphinx-ptm-voxforge-de-r20161117`` via each dirs ``test.sh``. I get the following error both times:

~~~
... long list of output ...
WARN: "ngram_model_trie.c", line 435: Duplicate word in dictionary: 
ERROR: "ngram_search.c", line 206: Language model/set does not contain </s>, recognition will fail
~~~

