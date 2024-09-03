module LandSea

using Dates
using ImageFiltering
using Logging
using NCDatasets

import Base: show, read, in

using Reexport
@reexport using GeoRegions

## Exporting the following functions:
export
        LandSeaData, LandSeaTopo, LandSeaFlat,
        getLandSea, smooth, smooth!, smoothlsm

## Abstract Types
"""
    LandSeaData

Abstract supertype for LandSea Datasets, with the following subtypes:

    LandSeaTopo <: LandSeaData
    LandSeaFlat <: LandSeaData

Both `LandSeaTopo` and `LandSeaFlat` types contain the following fields:
* `lon` - Vector containing the longitude points for the Land-Sea Dataset
* `lat` - Vector containing the latitude points for the Land-Sea Dataset
* `lsm` - Array containing data regarding the Land-Sea Mask.  1 is Land, 0 is Ocean, NaN is outside the bounds of the GeoRegion
* `mask` - Mask determining if point is within the GeoRegion or not. 1 is `true`, 0 is `false`.

A `LandSeaTopo` type will also contain the following field:
* `z` - Array containing data regarding the Orographic Height in meters.  NaN is outside the bounds of the GeoRegion
"""
abstract type LandSeaData end

abstract type LandSeaTopo <: LandSeaData end

abstract type LandSeaFlat <: LandSeaData end

"""
    LandSea.ETOPOLandSea <: LandSeaTopo

Object containing information on the ETOPO 2022 Land Sea mask for a GeoRegion.
"""
struct ETOPOLandSea <: LandSeaTopo
    lon  :: Vector{Float32}
    lat  :: Vector{Float32}
    lsm  :: Array{Float32,2}
    z    :: Array{Float32,2}
    mask :: Array{Int16,2}
end

modulelog() = "$(now()) - LandSea.jl"

include("download.jl")
include("smooth.jl")
include("backend.jl")

end
