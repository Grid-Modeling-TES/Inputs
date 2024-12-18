#!/bin/bash
#SBATCH --job-name=ERCOT_policy              # create a short name for your job
#SBATCH --partition=localhost
#SBATCH --nodes=1                           # node count
#SBATCH --ntasks=12                         # total number of tasks across all nodes
#SBATCH --cpus-per-task=4                   # cpu-cores per task (>1 if multi-threaded tasks)
#SBATCH --mem-per-cpu=3G                    # memory per cpu-core
#SBATCH --time=16:00:00                     # total run time limit (HH:MM:SS)

srun -N 1 -n 1 /home/ubuntu/julia-1.6.7/bin/julia --project=. /home/ubuntu/inputs/GenX_inputs/ERCOT/High_tariff_10_1w_8mmbtu/Run.jl &
srun -N 1 -n 1 /home/ubuntu/julia-1.6.7/bin/julia --project=. /home/ubuntu/inputs/GenX_inputs/ERCOT/No_tariff_1w_8mmbtu/Run.jl &
srun -N 1 -n 1 /home/ubuntu/julia-1.6.7/bin/julia --project=. /home/ubuntu/inputs/GenX_inputs/ERCOT/Low_vre_1w_8mmbtu/Run.jl &
srun -N 1 -n 1 /home/ubuntu/julia-1.6.7/bin/julia --project=. /home/ubuntu/inputs/GenX_inputs/ERCOT/No_co2_cap_1w_8mmbtu/Run.jl &
srun -N 1 -n 1 /home/ubuntu/julia-1.6.7/bin/julia --project=. /home/ubuntu/inputs/GenX_inputs/ERCOT/No_co2_cap_reference/Run.jl &
srun -N 1 -n 1 /home/ubuntu/julia-1.6.7/bin/julia --project=. /home/ubuntu/inputs/GenX_inputs/ERCOT/High_co2_cap_1w_8mmbtu/Run.jl &
srun -N 1 -n 1 /home/ubuntu/julia-1.6.7/bin/julia --project=. /home/ubuntu/inputs/GenX_inputs/ERCOT/Highest_co2_cap_1w_8mmbtu/Run.jl &
srun -N 1 -n 1 /home/ubuntu/julia-1.6.7/bin/julia --project=. /home/ubuntu/inputs/GenX_inputs/ERCOT/Highest2_co2_cap_1w_8mmbtu/Run.jl &
srun -N 1 -n 1 /home/ubuntu/julia-1.6.7/bin/julia --project=. /home/ubuntu/inputs/GenX_inputs/ERCOT/High_co2_cap_reference/Run.jl &
srun -N 1 -n 1 /home/ubuntu/julia-1.6.7/bin/julia --project=. /home/ubuntu/inputs/GenX_inputs/ERCOT/Highest_co2_cap_reference/Run.jl &
srun -N 1 -n 1 /home/ubuntu/julia-1.6.7/bin/julia --project=. /home/ubuntu/inputs/GenX_inputs/ERCOT/Highest2_co2_cap_reference/Run.jl &
srun -N 1 -n 1 /home/ubuntu/julia-1.6.7/bin/julia --project=. /home/ubuntu/inputs/GenX_inputs/ERCOT/Qualified_supply_1w_8mmbtu/Run.jl &

wait

date