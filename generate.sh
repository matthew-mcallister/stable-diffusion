. venv/bin/activate
export PYTORCH_CUDA_ALLOC_CONF=garbage_collection_threshold:0.6,max_split_size_mb:128
python scripts/txt2img.py \
    --prompt "$@" \
    --outdir 'outputs' \
    --H 128 --W 128 \
    --n_samples 1 \
    --config 'configs/stable-diffusion/pokemon.yaml' \
    --seed $RANDOM \
    --ckpt "$HOME/ai/default/log/checkpoints/last.ckpt"
