# This file was generated, do not modify it. # hide
__result = begin # hide
  
for hm in heatmaps
    hm.colorrange = (1, 3)
end

cbar = hm_sublayout[:, 2] = Colorbar(fig, heatmaps[1], label = "Activity [spikes/sec]")

fig

  end # hide
  save(joinpath(@OUTPUT, "example_13120606009268129346.png"), __result) # hide
  
  nothing # hide