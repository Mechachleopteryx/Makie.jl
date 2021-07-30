# This file was generated, do not modify it. # hide
__result = begin # hide
  
label_a = fig[2, 1, TopLeft()] = Label(fig, "A", textsize = 24,
    font = noto_sans_bold, halign = :right)
label_b = fig[2, 3, TopLeft()] = Label(fig, "B", textsize = 24,
    font = noto_sans_bold, halign = :right)

fig

  end # hide
  save(joinpath(@OUTPUT, "example_9140680363176640346.png"), __result) # hide
  
  nothing # hide