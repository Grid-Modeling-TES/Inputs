# Grid Modeling TES: Inputs
In this repository you will find the input data used to model TES across a variety of scenarios, in three grid operator terrories:

- Electric Reliability Council of Texas (ERCOT)
- Midcontent Independent System Operator (MISO)
- Southwest Power Pool (SPP)

This input data is intended for use with the GenX fork found [here](https://github.com/Grid-modeling-TES/GenX.jl) and Julia 1.6.7.

The data in this repo is organized by the 3 regions listed above. Within each region folder you will find 22 folders, each representing a specific scenario.

These scenarios are all outlined in the [paper]() describing this study.

## How to run a scenario
1. Please follow the GenX installation instructions found [here](https://github.com/Grid-modeling-TES/GenX.jl). We used Julia 1.6.7 and can't guarantee our GenX fork will work with any other Julia version.
2. Launch Julia and activate GenX:
   ```
   activate "<path-to-GenX>/GenX.jl"
   ```
4. To run a specific scenario in Julia, you have the option between a free solver (HiGHs) or a commercial solver (CPLEX), the latter of which requires a license to operate. We recommend using CPLEX because of the computational complexity of the model.
  - To run the $1/W, $8/MMBTu scenario in ERCOT using CPLEX, launch Julia and enter the command:
    ```
    include("<path-to-input-data/Inputs/ERCOT/1w_8mmbtu/Run.jl)
    ```
  - To run the $1/W, $8/MMBTu scenario in ERCOT using HiGHs, launch Julia and enter the command:
    ```
    include("<path-to-input-data>/Inputs/ERCOT/1w_8mmbtu/Run_highs.jl")
    ```

## Running multiple scenarios at once
In our study, we used a computing cluster to run multiple scenarios simultaneously. The .sh files used to run scnearios in batches have been included in each region's folder. There are 2 in each:
- Run_<region_name>_base.sh: runs all the main TES scenarios + the reference scenario
- Run_<region_name>_policy.sh: runs specific policy scenarios
