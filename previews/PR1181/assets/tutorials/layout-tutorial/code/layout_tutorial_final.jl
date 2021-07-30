# This file was generated, do not modify it. # hide
__result = begin # hide
  
# Aspect(1, 1) means that relative to row 1
# (row because we're setting a colsize,
# and aspect ratios are always about the other side)
# we set the column to an aspect ratio of 1

colsize!(hm_sublayout, 1, Aspect(1, 1))

# save("layout_tutorial_final.svg", fig) # hide
fig

  end # hide
  save(joinpath(@OUTPUT, "layout_tutorial_final.png"), __result) # hide
  
  nothing # hide