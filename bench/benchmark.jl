using BenchmarkTools
using DataFrames
using CSV
include(joinpath(@__DIR__, "benchmark_definitions.jl"))

function benchmark(optimizer::MOI.AbstractOptimizer)
    t = @benchmark begin MOI.optimize!($optimizer) end
    time = MOI.get(optimizer, MOI.SolveTimeSec())
    memory = t.memory
    return time, memory
end

df = DataFrame(method = String[], problem = String[], solve_time_sec = Float64[], memory_usage = Int[])
for (i, ((method, problem), optimizer)) in enumerate(bench)
    println("$i) ($method, $problem)")
    redirect_stdio(stdout = devnull) do
        global df
        solve_time_sec, memory_usage = benchmark(optimizer)
        push!(df, (method, problem, solve_time_sec, memory_usage))
    end
end

CSV.write("bench/benchmark.csv", df) 
