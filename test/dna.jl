using Test, BioSeqInt

@test length(alphabet_dna()) == 5

@testset "dna2int / int2dna" begin
    for i in 1:length(alphabet_dna())
        @test dna2int(int2dna(i)) == i
    end
    for a in alphabet_dna()
        @test int2dna(dna2int(a)) == a
    end
end
