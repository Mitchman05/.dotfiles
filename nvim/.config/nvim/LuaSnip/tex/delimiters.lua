local helpers = require("luasnip-helper-funcs")
local get_visual = helpers.get_visual
local tex_utils = helpers.tex_utils

return {
  s(
    {
      trig = "\\{",
      dscr = "Expand escaped parentheses",
      condition = tex_utils.in_mathzone,
      snippetType = "autosnippet",
    },
    fmta(
      "\\left\\{ <> \\right\\}",
      {
        d(1, get_visual),
      }
    )
  ),

  s(
    {
      trig = "\\(",
      dscr = "Expand escaped parentheses",
      condition = tex_utils.in_mathzone,
      snippetType = "autosnippet",
    },
    fmta(
      "\\left( <> \\right)",
      {
        d(1, get_visual),
      }
    )
  ),

  s(
    {
      trig = "\\[",
      dscr = "Expand escaped parentheses",
      condition = tex_utils.in_mathzone,
      snippetType = "autosnippet",
    },
    fmta(
      "\\left[ <> \\right]",
      {
        d(1, get_visual),
      }
    )
  ),

  s(
    {
      trig = "\\<",
      dscr = "Expand escaped angle bracket",
      condition = tex_utils.in_mathzone,
      snippetType = "autosnippet",
    },
    fmta(
      "\\langle <> \\rangle",
      {
        d(1, get_visual),
      }
    )
  ),

}
