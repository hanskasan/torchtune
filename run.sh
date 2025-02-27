# tune run full_finetune_single_device --config recipes/hans_configs/llama3_2/1B_full_single_device.yaml
# tune run lora_finetune_single_device --config recipes/hans_configs/llama3_2/1B_lora_single_device.yaml

# FOR PROFILING
# nsys profile -t cuda,nvtx,osrt,cudnn,cublas tune run full_finetune_single_device --config recipes/hans_configs/llama3_2/1B_full_single_device.yaml
# nsys profile -t cuda,nvtx,osrt,cudnn,cublas tune run lora_finetune_single_device --config recipes/hans_configs/llama3_2/1B_lora_single_device.yaml