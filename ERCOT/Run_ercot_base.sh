#!/bin/bash
#SBATCH --job-name=ERCOT_base             # create a short name for your job
#SBATCH --partition=localhost
#SBATCH --nodes=1                           # node count
#SBATCH --ntasks=10                          # total number of tasks across all nodes
#SBATCH --cpus-per-task=4                   # cpu-cores per task (>1 if multi-threaded tasks)
#SBATCH --mem-per-cpu=4G                    # memory per cpu-core
#SBATCH --time=16:00:00                     # total run time limit (HH:MM:SS)

srun -N 1 -n 1 /home/ubuntu/julia-1.6.7/bin/julia --project=. /home/ubuntu/inputs/GenX_inputs/ERCOT/1w_8mmbtu/Run.jl &
srun -N 1 -n 1 /home/ubuntu/julia-1.6.7/bin/julia --project=. /home/ubuntu/inputs/GenX_inputs/ERCOT/16w_8mmbtu/Run.jl &
srun -N 1 -n 1 /home/ubuntu/julia-1.6.7/bin/julia --project=. /home/ubuntu/inputs/GenX_inputs/ERCOT/08w_8mmbtu/Run.jl &
srun -N 1 -n 1 /home/ubuntu/julia-1.6.7/bin/julia --project=. /home/ubuntu/inputs/GenX_inputs/ERCOT/1w_6mmbtu/Run.jl &
srun -N 1 -n 1 /home/ubuntu/julia-1.6.7/bin/julia --project=. /home/ubuntu/inputs/GenX_inputs/ERCOT/16w_6mmbtu/Run.jl &
srun -N 1 -n 1 /home/ubuntu/julia-1.6.7/bin/julia --project=. /home/ubuntu/inputs/GenX_inputs/ERCOT/08w_6mmbtu/Run.jl &
srun -N 1 -n 1 /home/ubuntu/julia-1.6.7/bin/julia --project=. /home/ubuntu/inputs/GenX_inputs/ERCOT/1w_10mmbtu/Run.jl &
srun -N 1 -n 1 /home/ubuntu/julia-1.6.7/bin/julia --project=. /home/ubuntu/inputs/GenX_inputs/ERCOT/16w_10mmbtu/Run.jl &
srun -N 1 -n 1 /home/ubuntu/julia-1.6.7/bin/julia --project=. /home/ubuntu/inputs/GenX_inputs/ERCOT/08w_10mmbtu/Run.jl &
srun -N 1 -n 1 /home/ubuntu/julia-1.6.7/bin/julia --project=. /home/ubuntu/inputs/GenX_inputs/ERCOT/reference/Run.jl &

wait

date