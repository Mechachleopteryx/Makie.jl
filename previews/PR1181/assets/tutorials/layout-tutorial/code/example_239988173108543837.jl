# This file was generated, do not modify it. # hide
__result = begin # hide
  
ax2, line2 = lines(fig[1, 2], 7..17, x -> -x + 26,
    color = :blue, linewidth = 2,
    axis = (title = "Post Treatment",))

fig

  end # hide
  save(joinpath(@OUTPUT, "example_239988173108543837.png"), __result) # hide
  
  nothing # hide