#!/bin/bash


git clone https://github.com/emlakp/bigcode-evaluation-harness/
pip install -q -r ./bigcode-evaluation-harness/requirements.txt


python ./bigcode-evaluation-harness/main.py \
--model smallcloudai/Refact-1_6B-fim  \
--tasks humanevalfixtests-python \
--do_sample True \
--temperature 0.2 \
--n_samples 10 \
--batch_size 5 \
--allow_code_execution \
--save_generations \
--trust_remote_code \
--prompt refact-chat \
--save_generations \
--max_length_generation 1024 \
--precision bf16