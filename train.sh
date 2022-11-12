. venv/bin/activate
python main.py \
	-t \
	--base configs/stable-diffusion/pokemon.yaml \
	--gpus 0, \
	--scale_lr False  \
	--num_nodes 1 \
	--check_val_every_n_epoch 10 \
	--finetune_from "$HOME/base.ckpt" \
	--resume "$HOME/log"
