# This file was generated, do not modify it. # hide
__result = begin # hide
  
hm_axes = fig[1:2, 3] = [Axis(fig, title = t) for t in ["Cell Assembly Pre", "Cell Assembly Post"]]

heatmaps = [heatmap!(ax, i .+ rand(20, 20)) for (i, ax) in enumerate(hm_axes)]

fig

  end # hide
  save(joinpath(@OUTPUT, "example_15525609469226347001.png"), __result) # hide
  
  nothing # hide