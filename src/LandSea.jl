module LandSea

using Dates
# using ImageFiltering
using Logging

import Base: show

## Exporting the following functions:
export
        LandSeaData, LandSeaTopo, LandSeaFlat,
        getLandSea
        #smooth, smooth!, smoothlsm

## Abstract Types
"""
    LandSeaData

Abstract supertype for LandSea Datasets. All `LandSeaData` types contain the following fields:
* `lon` - Vector containing the longitude points for the Land-Sea Dataset
* `lat` - Vector containing the latitude points for the Land-Sea Dataset
* `lsm` - Array containing data regarding the Land-Sea Mask. 1 is Land, 0 is Ocean, NaN is outside the bounds of the GeoRegion
"""
abstract type LandSeaData end

"""
    LandSeaTopo <: LandSeaData

Text

A `LandSeaTopo` type will also contain the following field:
* `z` - Array containing data regarding the Orographic Height in meters. NaN is outside the bounds of the GeoRegion
"""
struct LandSeaTopo{FT1<:Real,FT2<:Real} <: LandSeaData
    lon :: Vector{FT1}
    lat :: Vector{FT1}
    lsm :: Array{FT2,2}
    z   :: Array{FT2,2}
end

"""
    LandSeaFlat <: LandSeaData

Text
"""
struct LandSeaFlat{FT1<:Real,FT2<:Real} <: LandSeaData
    lon :: Vector{FT1}
    lat :: Vector{FT1}
    lsm :: Array{FT2,2}
end

modulelog() = "$(now()) - LandSea.jl"

getLandSea() = "$(modulelog()) - There is a getLandSea() dummy-function in LandSea.jl, so that it can be extended by other packages"

# include("smooth.jl")
include("show.jl")

end
