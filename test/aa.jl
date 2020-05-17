using Test, BioSeqInt

@test length(alphabet_aa()) == 21

@testset "aa2int / int2aa" begin
    for i in 1:21
        @test aa2int(int2aa(i)) == i
    end
    for a in alphabet_aa()
        @test int2aa(aa2int(a)) == a
    end
end
