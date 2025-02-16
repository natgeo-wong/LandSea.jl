```@raw html
---
layout: home

hero:
  name: "LandSea.jl"
  text: "Manipulating Land-Sea Mask Datasets"
  tagline: Defining and Downloading Land-Sea Mask Datasets
  image:
    src: /logo.png
    alt: LandSea
  actions:
    - theme: brand
      text: Getting Started
      link: /landsea
    - theme: alt
      text: API
      link: /api
    - theme: alt
      text: View on Github
      link: https://github.com/GeoRegionsEcosystem/LandSea.jl

features:
  - title: 🌍 LandSeaData Types
    details: Provides containers and structs that can be used to hold information on a land-sea mask dataset.
  - title: ⚙️ Extendable Functionality
    details: The functions and types here are generalizable and meant to be used in other dataset packages.
  - title: 🔍 Manipulate LandSea Masks
    details: To come, functionality is in development 😉
---
```

## Introduction

LandSea.jl is a skeleton Julia package that can be used to define a land-sea mask object-type as a dataset. Its functions and structs/types are meant to be imported and extended for use for various datasets and any Julia packages dealing with such datasets.

## Installation Instructions

The latest version of LandSea.jl can be installed using the Julia package manager (accessed by pressing `]` in the Julia command prompt)
```julia-repl
julia> ]
(@v1.10) pkg> add LandSea
```

You can update `LandSea.jl` to the latest version using
```julia-repl
(@v1.10) pkg> update LandSea
```

And if you want to get the latest release without waiting for me to update the Julia Registry (although this generally isn't necessary since I make a point to release patch versions as soon as I find bugs or add new working features), you may fix the version to the `main` branch of the GitHub repository:
```julia-repl
(@v1.10) pkg> add LandSea#main
```

## Getting help
If you are interested in using `LandSea.jl` or are trying to figure out how to use it, please feel free to ask me questions and get in touch!  Please feel free to [open an issue](https://github.com/GeoRegionsEcosystem/LandSea.jl/issues/new) if you have any questions, comments, suggestions, etc!
