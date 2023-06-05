cd voxelization
python voxelize_for_interp.py -s '..\POKEMON\charizard\pm0006_00_00.obj' --res 100 --n_scales 5 -o '../POKEMON/charizard/charizard.h5'
python voxelize_for_interp.py -s '../POKEMON/charmander/pm0004_00_00.obj' --res 100 --n_scales 5 -o '../POKEMON/charmander/charmander.h5'
python voxelize_for_interp.py -s '../POKEMON/charmeleon/pm0005_00_00.obj' --res 100 --n_scales 5 -o '../POKEMON/charmeleon/charmeleon.h5'

cd ..
python main_for_interp_2_heads.py train --tag 'charmander-charizard-2-heads' -s 'POKEMON/charmander/charmander.h5' -ss 'POKEMON/charizard/charizard.h5' -g 0 --n_iters 10000 --G_struct 'triplane_2_heads'
python main_for_interp_with_sliced_samples.py train --tag 'charmander-charizard-sliced_samples' -s 'POKEMON/charmander/charmander.h5' -ss 'POKEMON/charizard/charizard.h5' -g 0 --n_iters 10000
python main_for_interp.py train --tag 'charmander-charizard-bigger-network' -s 'POKEMON/charmander/charmander.h5' -ss 'POKEMON/charizard/charizard.h5' -g 0 --n_iters 10000 \
--D_nc 64 --D_layers 9 --G_nc 64 --G_layers 12 --mlp_dim 64 --mlp_layers 3