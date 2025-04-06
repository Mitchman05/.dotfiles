local helpers = require("luasnip-helper-funcs")
local get_visual = helpers.get_visual
local tex_utils = helpers.tex_utils

return {
  s({
      trig = "ff",
      dscr = "MathTeX fraction",
      condition = tex_utils.in_mathzone,
      snippetType = "autosnippet",
    },
    fmta(
      "\\frac{<>}{<>}",
      {
        i(1),
        i(2),
      }
    )
  ),

  
  s(
    {
      trig = "([^%a?])ee",
      regTrig = true,
      wordTrig = false,
      condition = tex_utils.in_mathzone,
      snippetType = "autosnippet",
    },
    fmta(
      "<>e^{<>}",
      {
        f( function(_, snip) return snip.captures[1] end),
        d(1, get_visual),
      }
    )
  ),
  

  s(
    {
      trig = "([^%a])mm",
      wordTrig = false,
      trigEngine = "pattern",
      snippetType = "autosnippet",
    },
    fmta(
      "<>$<>$ ",
      {
        f( function(_, snip) return snip.captures[1] end),
        d(1, get_visual),
      }
    )
  ),

  s(
    {
      trig = '([%a%)%]%}])00',
      regTrig = true,
      wordTrig = false,
      snippetType="autosnippet",
      condition = tex_utils.in_mathzone
    },
    fmta(
      "<>_{<>}",
      {
        f( function(_, snip) return snip.captures[1] end ),
        i(1)
      }
    )
  ),
}
