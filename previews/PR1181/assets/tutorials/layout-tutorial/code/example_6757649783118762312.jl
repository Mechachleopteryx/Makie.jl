# This file was generated, do not modify it. # hide
__result = begin # hide
  
hm_sublayout = GridLayout()
fig[1:2, 3] = hm_sublayout

# there is another shortcut for filling a GridLayout vertically with
# a vector of content
hm_sublayout[:v] = hm_axes

fig

  end # hide
  save(joinpath(@OUTPUT, "example_6757649783118762312.png"), __result) # hide
  
  nothing # hide