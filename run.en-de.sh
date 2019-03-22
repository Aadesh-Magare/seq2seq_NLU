#!/bin/bash

if [ "$1" = "train" ]; then
	CUDA_VISIBLE_DEVICES=0 python run.py train --train-src=./training_en-de/train.en --train-tgt=./training_en-de/train.de --dev-src=./dev_en-de/dev.en --dev-tgt=./dev_en-de/dev.de --vocab=vocab_en_de.json --save-to=model_en-de.bin --cuda
elif [ "$1" = "test" ]; then
    CUDA_VISIBLE_DEVICES=0 python run.py decode model_en-de.bin ./test_en-de/test.en ./test_en-de/test.de outputs_en-de/test_outputs.txt --cuda
elif [ "$1" = "train-local" ]; then
	python run.py train --train-src=./training_en-de/train.en --train-tgt=./training_en-de/train.de --dev-src=./dev_en-de/dev.en --dev-tgt=./dev_en-de/dev.de --vocab=vocab_en_de.json --save-to=model_en-de.bin
elif [ "$1" = "test-local" ]; then
    python run.py decode model_en-de.bin ./test_en-de/test.en ./test_en-de/test.de outputs_en-de/test_outputs.txt 
elif [ "$1" = "vocab" ]; then
	python vocab.py --train-src=./training_en-de/train.en --train-tgt=./training_en-de/train.de vocab_en_de.json
else
	echo "Invalid Option Selected"
fi
