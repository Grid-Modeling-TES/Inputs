#!/bin/bash
#SBATCH --job-name=SPP_base             # create a short name for your job
#SBATCH --partition=localhost
#SBATCH --nodes=1                           # node count
#SBATCH --ntasks=12                          # total number of tasks across all nodes
#SBATCH --cpus-per-task=4                   # cpu-cores per task (>1 if multi-threaded tasks)
#SBATCH --mem-per-cpu=4G                    # memory per cpu-core
#SBATCH --time=20:00:00                     # total run time limit (HH:MM:SS)

srun -N 1 -n 1 /home/ubuntu/julia-1.6.7/bin/julia --project=. /home/ubuntu/inputs/GenX_inputs/SPP/Scenarios/07w_refgas/Run.jl &
srun -N 1 -n 1 /home/ubuntu/julia-1.6.7/bin/julia --project=. /home/ubuntu/inputs/GenX_inputs/SPP/Scenarios/05w_refgas/Run.jl &
srun -N 1 -n 1 /home/ubuntu/julia-1.6.7/bin/julia --project=. /home/ubuntu/inputs/GenX_inputs/SPP/Scenarios/03w_refgas/Run.jl &
srun -N 1 -n 1 /home/ubuntu/julia-1.6.7/bin/julia --project=. /home/ubuntu/inputs/GenX_inputs/SPP/Scenarios/07w_lowgas/Run.jl &
srun -N 1 -n 1 /home/ubuntu/julia-1.6.7/bin/julia --project=. /home/ubuntu/inputs/GenX_inputs/SPP/Scenarios/05w_lowgas/Run.jl &
srun -N 1 -n 1 /home/ubuntu/julia-1.6.7/bin/julia --project=. /home/ubuntu/inputs/GenX_inputs/SPP/Scenarios/03w_lowgas/Run.jl &
srun -N 1 -n 1 /home/ubuntu/julia-1.6.7/bin/julia --project=. /home/ubuntu/inputs/GenX_inputs/SPP/Scenarios/07w_highgas/Run.jl &
srun -N 1 -n 1 /home/ubuntu/julia-1.6.7/bin/julia --project=. /home/ubuntu/inputs/GenX_inputs/SPP/Scenarios/05w_highgas/Run.jl &
srun -N 1 -n 1 /home/ubuntu/julia-1.6.7/bin/julia --project=. /home/ubuntu/inputs/GenX_inputs/SPP/Scenarios/03w_highgas/Run.jl &
srun -N 1 -n 1 /home/ubuntu/julia-1.6.7/bin/julia --project=. /home/ubuntu/inputs/GenX_inputs/SPP/Scenarios/reference/Run.jl &
srun -N 1 -n 1 /home/ubuntu/julia-1.6.7/bin/julia --project=. /home/ubuntu/inputs/GenX_inputs/SPP/Scenarios/reference_highgas/Run.jl &
srun -N 1 -n 1 /home/ubuntu/julia-1.6.7/bin/julia --project=. /home/ubuntu/inputs/GenX_inputs/SPP/Scenarios/reference_lowgas/Run.jl &

wait

date