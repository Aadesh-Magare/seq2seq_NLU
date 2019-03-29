# Seq2Seq Model with Attention for Machine Translation.

# E1-246 2019: Assignment 2

**Usage:**
    
    run.en-de.sh vocab                      Generate vocabulary and save to intermediate file.
    run.en-de.sh train                      Start training model for En-De translation.
    run.en-de.sh test                       Test trained model for En-De translation.

    run.en-hi.sh vocab                      Generate vocabulary and save to intermediate file.
    run.en-hi.sh train                      Start training model for En-Hi translation.
    run.en-hi.sh test                       Test trained model for En-Hi translation.

    use train-local / test-local for non-gpu machine.

**Fine-Tuned Usage:**

    run.py train --train-src=<file> --train-tgt=<file> --dev-src=<file> --dev-tgt=<file> --vocab=<file> [options]
    run.py decode [options] MODEL_PATH TEST_SOURCE_FILE OUTPUT_FILE
    run.py decode [options] MODEL_PATH TEST_SOURCE_FILE TEST_TARGET_FILE OUTPUT_FILE

**Options:**

    -h --help                               show this screen.
    --cuda                                  use GPU
    --train-src=<file>                      train source file
    --train-tgt=<file>                      train target file
    --dev-src=<file>                        dev source file
    --dev-tgt=<file>                        dev target file
    --vocab=<file>                          vocab file
    --seed=<int>                            seed [default: 0]
    --batch-size=<int>                      batch size [default: 32]
    --embed-size=<int>                      embedding size [default: 300]
    --hidden-size=<int>                     hidden size [default: 300]
    --clip-grad=<float>                     gradient clipping [default: 5.0]
    --log-every=<int>                       log every [default: 100]
    --max-epoch=<int>                       max epoch [default: 5]
    --input-feed                            use input feeding
    --patience=<int>                        wait for how many iterations to decay learning rate [default: 5]
    --max-num-trial=<int>                   terminate training after how many trials [default: 3]
    --lr-decay=<float>                      learning rate decay [default: 0.5]
    --beam-size=<int>                       beam size [default: 5]
    --sample-size=<int>                     sample size [default: 5]
    --lr=<float>                            learning rate [default: 0.001]
    --uniform-init=<float>                  uniformly initialize all parameters [default: 0.1]
    --save-to=<file>                        model save path [default: model.bin]
    --valid-niter=<int>                     perform validation after how many iterations [default: 2000]
    --dropout=<float>                       dropout [default: 0.3]
    --max-decoding-time-step=<int>          maximum number of decoding time steps [default: 70]
    --att_type=<str>                        type of attention used additive/multiplicative/key_value/scaled_dot_product [default: scaled_dot_product]
    --self_attention=<str>                  whether to use self_attention in encoder-decoder [default: False]

    
**References:**

The starter kit for project is taken from Stanford CS224n (http://web.stanford.edu/class/cs224n/)
