using LandSea
using Documenter

DocMeta.setdocmeta!(LandSea, :DocTestSetup, :(using LandSea); recursive=true)

makedocs(;
    modules=[LandSea],
    authors="Nathanael Wong <natgeo.wong@outlook.com>",
    sitename="LandSea.jl",
    doctest  = false,
    warnonly = true,
    format=Documenter.HTML(;
        canonical="https://github.com/GeoRegionsEcosystem/LandSea.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/GeoRegionsEcosystem/LandSea.jl",
    target    = "build", # this is where Vitepress stores its output
    devbranch = "main",
    branch    = "gh-pages",
)
