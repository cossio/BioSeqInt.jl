using Test, BioSeqInt

@testset "aa2int / int2aa" begin
    for i = 1:21
        @test aa2int(int2aa(i)) == i
    end
    for a in aa_alphabet()
        @test int2aa(aa2int(a)) == a
    end
end