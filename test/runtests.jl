using SafeTestsets

@safetestset "aa" begin include("aa.jl") end
@safetestset "dna" begin include("dna.jl") end
