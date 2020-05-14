export aa2int, int2aa, aa_alphabet

"""
    aa2int(char)

Amino-acid one-letter code to integer (1 to 21, with gap = 21).
"""
function aa2int(c::Union{Char,UInt8})
    # from: https://github.com/carlobaldassi/GaussDCA.jl
    alphabet = Int8.((1,21, 2, 3, 4, 5, 6, 7, 8,21, 9,10,11,12,21,13,14,15,16,17,21,18,19,21,20))
                    # A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W, X, Y
    i = UInt8(c) - 0x40
    if 1 ≤ i ≤ 25
        return alphabet[i]
    else
        return Int8(21)
    end
end

"""
    int2aa(i)

Get the amino acid (in one letter code) corresponding to the integer `i`.
"""
int2aa(i::Integer) = aa_alphabet()[i]

"""
    aa_alphabet()

Returns the alphabet of amino-acid letters.
"""
aa_alphabet() = ('A', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'K', 'L', 'M', 'N', 'P', 'Q', 'R', 'S', 'T', 'V', 'W', 'Y', '-')

"""
    aa2int(seq::String)

Convert a string amino-acid sequence to a vector of integers.
"""
aa2int(s::String) = aa2int.(collect(s))

"""
    aa2int(seq::String[])

Given a vector of string amino-acid sequences, converts it
to an integer matrix.
"""
aa2int(ss::AbstractVector{String}) = hcat(aa2int.(ss)...)
