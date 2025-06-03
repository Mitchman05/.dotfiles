local helpers = require("luasnip-helper-funcs")
local get_visual = helpers.get_visual
local tex_utils = helpers.tex_utils

return {
  s(
    {
      trig = "([^%a])tt",
      dscr = "\\texttt{} (monospace)",
      regTrig = true,
      wordTrig = false,
      snippetType = "autosnippet",
      conditions = not tex_utils.in_mathzone,
    },
    fmta(
      "<>\\texttt{<>}",
      {
        f( function(_, snip) return snip.captures[1] end),
        d(1, get_visual),
      }
    )
  ),

  s(
    {
      trig = "([^%a])tii",
      dscr = "\\textit{}",
      regTrig = true,
      wordTrig = false,
      snippetType = "autosnippet"
    },
    fmta(
      "<>\\textit{<>}",
      {
        f( function(_, snip) return snip.captures[1] end),
        d(1, get_visual),
      }
    )
  ),

  s(
    {
      trig = "([^%a])tbb",
      dscr = "\\textbf{}",
      regTrig = true,
      wordTrig = false,
      snippetType = "autosnippet",
      conditions = not tex_utils.in_mathzone
    },
    fmta(
      "<>\\textbf{<>}",
      {
        f( function(_, snip) return snip.captures[1] end),
        d(1, get_visual),
      }
    )
  ),

  s(
    {
      trig = "([^%a])ul",
      dscr = "\\underline{}",
      regTrig = true,
      wordTrig = false,
      snippetType = "autosnippet"
    },
    fmta(
      "<>\\underline{<>}",
      {
        f( function(_, snip) return snip.captures[1] end),
        d(1, get_visual),
      }
    )
  ),

  s(
    {
      trig = "mtt",
      dscr = "\\text{} (math environment)",
      snippetType = "autosnippet",
      condition = tex_utils.in_mathzone
    },
    fmta(
      "\\text{<>}",
      {
        d(1, get_visual),
      }
    )
  ),

  s(
    {
      trig = "trm",
      dscr = "\\textrm{} (math environment)",
      snippetType = "autosnippet",
      condition = tex_utils.in_mathzone
    },
    fmta(
      "\\textrm{<>}",
      {
        d(1, get_visual),
      }
    )
  ),

  s(
    {
      trig = "bf",
      dscr = "\\mathbf{}",
      snippetType = "autosnippet",
      condition = tex_utils.in_mathzone
    },
    fmta(
      "\\mathbf{<>}",
      {
        d(1, get_visual),
      }
    )
  ),

  s(
    {
      trig = "mbb",
      dscr = "\\mathbb{}",
      snippetType = "autosnippet",
      condition = tex_utils.in_mathzone
    },
    fmta(
      "\\mathbb{<>}",
      {
        d(1, get_visual),
      }
    )
  ),
}
