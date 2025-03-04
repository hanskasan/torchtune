# export PATH=/usr/local/NVIDIA-Nsight-Compute-2025.1/:$PATH

# tune run full_finetune_single_device --config recipes/hans_configs/llama3_2/1B_full_single_device.yaml
# tune run lora_fine/tune_single_device --config recipes/hans_configs/llama3_2/1B_lora_single_device.yaml


# FOR NSIGHT SYSTEM PROFILING
sudo nsys profile -t cuda,nvtx,osrt,cudnn,cublas tune run full_finetune_single_device --config recipes/hans_configs/llama3_2/1B_full_single_device.yaml
# nsys profile -t cuda,nvtx,osrt,cudnn,cublas tune run lora_finetune_single_device --config recipes/hans_configs/llama3_2/1B_lora_single_device.yaml

# FOR NSIGHT COMPUTE PROFILING
# sudo /usr/local/cuda/bin/ncu -o full --set full --kernel-name ampere_bf16_s16816gemm_bf16_256x128_ldg8_f2f_stages_32x3_tn ~/.local/bin/tune run full_finetune_single_device --config recipes/hans_configs/llama3_2/1B_full_single_device.yaml
# sudo /usr/local/cuda/bin/ncu -o lora --set full --kernel-name ampere_bf16_s16816gemm_bf16_128x64_ldg8_f2f_tn ~/.local/bin/tune run full_finetune_single_device --config recipes/hans_configs/llama3_2/1B_full_single_device.yaml

