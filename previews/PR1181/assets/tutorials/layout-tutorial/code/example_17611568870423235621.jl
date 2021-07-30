# This file was generated, do not modify it. # hide
__result = begin # hide
  
leg = fig[1, end+1] = Legend(fig,
    [line1, scat1, line2, scat2],
    ["f(x) = x", "Data", "f(x) = -x + 26", "Data"])

fig

  end # hide
  save(joinpath(@OUTPUT, "example_17611568870423235621.png"), __result) # hide
  
  nothing # hide