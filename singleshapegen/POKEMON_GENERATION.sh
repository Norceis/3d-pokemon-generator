cd voxelization
python voxelize.py -s '../POKEMON/charmander/pm0004_00_00.obj' --res 200 --n_scales 8 -o '../POKEMON/charmander/charmander.h5'
python voxelize.py -s '../POKEMON/charmeleon/pm0005_00_00.obj' --res 200 --n_scales 8 -o '../POKEMON/charmeleon/charmeleon.h5'
python voxelize.py -s '../POKEMON/gala_moltres/pm0146_00_31.obj' --res 200 --n_scales 8 -o '../POKEMON/gala_moltres/gala_moltres.h5'
cd ..
python main.py train --tag 'charmeleon' -s 'POKEMON/charmeleon/charmeleon.h5' -g 0 --n_iters 6000
python main.py train --tag 'charmander' -s 'POKEMON/charmander/charmander.h5' -g 0 --n_iters 6000
python main.py train --tag 'gala_moltres' -s 'POKEMON/gala_moltres/gala_moltres.h5' -g 0 --n_iters 6000