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
      snippetType = "autosnippet"
    },
    fmta(
      "<>\\texttt{<>} ",
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
      "<>\\textit{<>} ",
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
      snippetType = "autosnippet"
    },
    fmta(
      "<>\\textbf{<>} ",
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
      "<>\\underline{<>} ",
      {
        f( function(_, snip) return snip.captures[1] end),
        d(1, get_visual),
      }
    )
  ),

  s(
    {
      trig = "([^%a])tt",
      dscr = "\\text{} (math environment)",
      regTrig = true,
      wordTrig = false,
      snippetType = "autosnippet",
      condition = tex_utils.in_mathzone
    },
    fmta(
      "<>\\text{<>} ",
      {
        f( function(_, snip) return snip.captures[1] end),
        d(1, get_visual),
      }
    )
  ),

  s(
    {
      trig = "([^%a])mbf",
      dscr = "\\mathbf{}",
      regTrig = true,
      wordTrig = false,
      snippetType = "autosnippet",
      condition = tex_utils.in_mathzone
    },
    fmta(
      "<>\\mathbf{<>} ",
      {
        f( function(_, snip) return snip.captures[1] end),
        d(1, get_visual),
      }
    )
  ),

  s(
    {
      trig = "([^%a])mbf",
      dscr = "\\mathbb{}",
      regTrig = true,
      wordTrig = false,
      snippetType = "autosnippet",
      condition = tex_utils.in_mathzone
    },
    fmta(
      "<>\\mathbb{<>} ",
      {
        f( function(_, snip) return snip.captures[1] end),
        d(1, get_visual),
      }
    )
  ),
}
