export dna2int, int2dna, alphabet_dna

"""
    alphabet_dna()

Returns the alphabet of amino-acid letters.
"""
alphabet_dna() = "ACGT-"

"""
    dna2int(char)

DNA one-letter code to integer (1 to 5, with gap = 5).
"""
function dna2int(c::Union{Char,UInt8})
    if c == 'A'
        Int8(1)
    elseif c == 'C'
        Int8(2)
    elseif c == 'G'
        Int8(3)
    elseif c == 'T'
        Int8(4)
    else
        Int8(5)
    end
end

"""
    int2dna(i)

Get the amino acid (in one letter code) corresponding to the integer `i`.
"""
int2dna(i::Integer) = alphabet_dna()[i]

"""
    dna2int(seq::String)

Convert a string DNA sequence to a vector of integers.
"""
dna2int(s::String) = dna2int.(collect(s))

"""
    dna2int(seq::String[])

Given a vector of string DNA sequences, converts it
to an integer matrix.
"""
dna2int(ss::AbstractVector{String}) = hcat(dna2int.(ss)...)
