using LandSea
using Documenter

DocMeta.setdocmeta!(LandSea, :DocTestSetup, :(using LandSea); recursive=true)

makedocs(;
    modules=[LandSea],
    authors="Nathanael Wong <natgeo.wong@outlook.com>",
    sitename="LandSea.jl",
    format=Documenter.HTML(;
        canonical="https://natgeo-wong.github.io/LandSea.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/natgeo-wong/LandSea.jl",
    devbranch="main",
)
