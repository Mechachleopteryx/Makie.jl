# This file was generated, do not modify it. # hide
__result = begin # hide
  
using CairoMakie
using Random # hide
Random.seed!(2) # hide

noto_sans = assetpath("fonts", "NotoSans-Regular.ttf")
noto_sans_bold = assetpath("fonts", "NotoSans-Bold.ttf")

fig = Figure(backgroundcolor = RGBf0(0.98, 0.98, 0.98),
    resolution = (1000, 700), font = noto_sans)

fig

  end # hide
  save(joinpath(@OUTPUT, "example_14383798262171560425.png"), __result) # hide
  
  nothing # hide