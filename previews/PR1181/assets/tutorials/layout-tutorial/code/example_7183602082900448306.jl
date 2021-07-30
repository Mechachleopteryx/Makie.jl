# This file was generated, do not modify it. # hide
__result = begin # hide
  
data2 = randn(50, 2) * [1 -2.5; -2.5 1] .+ [13 13]

scat2 = scatter!(data2,
    color = (:blue, 0.3), markersize = 15px, marker = '▲')

fig

  end # hide
  save(joinpath(@OUTPUT, "example_7183602082900448306.png"), __result) # hide
  
  nothing # hide