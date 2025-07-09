#!/bin/bash
#SBATCH --job-name=MISO_policy              # create a short name for your job
#SBATCH --partition=localhost
#SBATCH --nodes=1                           # node count
#SBATCH --ntasks=12                         # total number of tasks across all nodes
#SBATCH --cpus-per-task=4                   # cpu-cores per task (>1 if multi-threaded tasks)
#SBATCH --mem-per-cpu=3G                    # memory per cpu-core
#SBATCH --time=80:00:00                     # total run time limit (HH:MM:SS)

srun -N 1 -n 1 /home/ubuntu/julia-1.6.7/bin/julia --project=. /home/ubuntu/inputs/GenX_inputs/MISO/Scenarios/High_tariff_10_05w_refgas/Run.jl &
srun -N 1 -n 1 /home/ubuntu/julia-1.6.7/bin/julia --project=. /home/ubuntu/inputs/GenX_inputs/MISO/Scenarios/No_tariff_05w_refgas/Run.jl &
srun -N 1 -n 1 /home/ubuntu/julia-1.6.7/bin/julia --project=. /home/ubuntu/inputs/GenX_inputs/MISO/Scenarios/Low_vre_05w_refgas/Run.jl &
srun -N 1 -n 1 /home/ubuntu/julia-1.6.7/bin/julia --project=. /home/ubuntu/inputs/GenX_inputs/MISO/Scenarios/No_co2_cap_05w_refgas/Run.jl &
srun -N 1 -n 1 /home/ubuntu/julia-1.6.7/bin/julia --project=. /home/ubuntu/inputs/GenX_inputs/MISO/Scenarios/No_co2_cap_reference/Run.jl &
srun -N 1 -n 1 /home/ubuntu/julia-1.6.7/bin/julia --project=. /home/ubuntu/inputs/GenX_inputs/MISO/Scenarios/High_co2_cap_05w_refgas/Run.jl &
srun -N 1 -n 1 /home/ubuntu/julia-1.6.7/bin/julia --project=. /home/ubuntu/inputs/GenX_inputs/MISO/Scenarios/Highest_co2_cap_05w_refgas/Run.jl &
srun -N 1 -n 1 /home/ubuntu/julia-1.6.7/bin/julia --project=. /home/ubuntu/inputs/GenX_inputs/MISO/Scenarios/Highest2_co2_cap_05w_refgas/Run.jl &
srun -N 1 -n 1 /home/ubuntu/julia-1.6.7/bin/julia --project=. /home/ubuntu/inputs/GenX_inputs/MISO/Scenarios/High_co2_cap_reference/Run.jl &
srun -N 1 -n 1 /home/ubuntu/julia-1.6.7/bin/julia --project=. /home/ubuntu/inputs/GenX_inputs/MISO/Scenarios/Highest_co2_cap_reference/Run.jl &
srun -N 1 -n 1 /home/ubuntu/julia-1.6.7/bin/julia --project=. /home/ubuntu/inputs/GenX_inputs/MISO/Scenarios/Highest2_co2_cap_reference/Run.jl &
srun -N 1 -n 1 /home/ubuntu/julia-1.6.7/bin/julia --project=. /home/ubuntu/inputs/GenX_inputs/MISO/Scenarios/Qualified_supply_05w_refgas/Run.jl &

wait

date