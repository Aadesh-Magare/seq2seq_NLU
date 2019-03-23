#!/bin/bash

if [ "$1" = "train" ]; then
	CUDA_VISIBLE_DEVICES=0 python run.py train --train-src=./training_en-hi/train.en --train-tgt=./training_en-hi/train.hi --dev-src=./dev_en-hi/dev.en --dev-tgt=./dev_en-hi/dev.hi --vocab=vocab_en_hi.json --save-to=model_en-hi.bin --cuda
elif [ "$1" = "test" ]; then
    CUDA_VISIBLE_DEVICES=0 python run.py decode model_en-hi.bin ./test_en-hi/test.en ./test_en-hi/test.hi outputs_en-hi/test_outputs.txt --cuda
elif [ "$1" = "train-local" ]; then
	python run.py train --train-src=./training_en-hi/train.en --train-tgt=./training_en-hi/train.hi --dev-src=./dev_en-hi/dev.en --dev-tgt=./dev_en-hi/dev.hi --vocab=vocab_en_hi.json --save-to=model_en-hi.bin
elif [ "$1" = "test-local" ]; then
    python run.py decode model_en-hi.bin ./test_en-hi/test.en ./test_en-hi/test.hi outputs_en-hi/test_outputs.txt
elif [ "$1" = "vocab" ]; then
	python vocab.py --train-src=./training_en-hi/train.en --train-tgt=./training_en-hi/train.hi vocab_en_hi.json
else
	echo "Invalid Option Selected"
fi
