cd voxelization
python voxelize_for_interp.py -s '..\POKEMON\gyarados\pm0130_00_00.obj' --res 100 --n_scales 6 -o '../POKEMON/gyarados/gyarados.h5'
python voxelize_for_interp.py -s '../POKEMON/charizard/pm0006_00_00.obj' --res 100 --n_scales 6 -o '../POKEMON/charizard/charizard.h5'
cd ..
python main_for_interp.py train --tag 'charizard_gyarados' -s 'POKEMON/charizard/charizard.h5' -ss 'POKEMON/gyarados/gyarados.h5' -g 0 --n_iters 8000