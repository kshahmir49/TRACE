#!/bin/bash
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --mem=32GB
#SBATCH --job-name=traj_track
#SBATCH --time=72:00:00
#SBATCH --partition=prod
#SBATCH --account=kuex0008
#SBATCH --output=traj_track.%j.out
#SBATCH --error=traj_track.%j.err

module load miniconda
conda activate tftf

python train_individualTF.py --dataset_name merged_data --name merged_data--max_epoch 240 --batch_size 100 --name merged_train --factor 1