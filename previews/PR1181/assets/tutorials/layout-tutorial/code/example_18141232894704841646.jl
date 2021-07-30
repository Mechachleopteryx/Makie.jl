# This file was generated, do not modify it. # hide
__result = begin # hide
  
data1 = randn(50, 2) * [1 2.5; 2.5 1] .+ [10 10]

line1 = lines!(ax1, 5..15, x -> x, color = :red, linewidth = 2)
scat1 = scatter!(ax1, data1,
    color = (:red, 0.3), markersize = 15px, marker = '■')

fig

  end # hide
  save(joinpath(@OUTPUT, "example_18141232894704841646.png"), __result) # hide
  
  nothing # hide