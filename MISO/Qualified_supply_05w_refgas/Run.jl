using CPLEX
using GenX

run_genx_case!(dirname(@__FILE__), CPLEX.Optimizer)
