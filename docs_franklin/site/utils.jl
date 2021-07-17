using Chain


function hfun_bar(vname)
  val = Meta.parse(vname[1])
  return round(sqrt(val), digits=2)
end

function hfun_m1fill(vname)
  var = vname[1]
  return pagevar("index", var)
end

function lx_baz(com, _)
  # keep this first line
  brace_content = Franklin.content(com.braces[1]) # input string
  # do whatever you want here
  return uppercase(brace_content)
end


function lx_examplefigure(com, _)
  content = Franklin.content(com.braces[1])

  preamble, middle = split(content, r"```(julia)?", limit = 2)
  args = split(strip(preamble), r"\s*[=,]\s*", keepempty = false)

  if !iseven(length(args))
    error("Uneven argument lengths, should be a=b pairs")
  end
  d = Dict(args[1:2:end] .=> args[2:2:end])

  name = get(d, "name", "example_" * string(hash(content)))
  svg = parse(Bool, get(d, "svg", "false"))

  middle, _ = split(middle, r"```\s*$")
  s = "```julia:$name" *
  middle *
  """
  save(joinpath(@OUTPUT, "$name.png"), current_figure()) # hide
  if $svg
    save(joinpath(@OUTPUT, "$name.svg"), current_figure()) # hide
  end
  ```
  \\fig{$name.$(svg ? "svg" : "png")}
  """

  s
end

function hfun_list_plotting_functions()
  @chain begin
    readdir(joinpath(@__DIR__, "plotting_functions"))
    filter(endswith(".md"), _)
    filter(!=("index.md"), _)
    map(_) do page
      name = splitext(page)[1]
      """
      <div style="border:1px solid black; margin: 5px">
        <a href="$(name)">$name</a>
        <p>There should be images here, generated on the linked sites, but they are not available when the hfun runs.</p>
      </div>
      """
    end
    join
  end
end