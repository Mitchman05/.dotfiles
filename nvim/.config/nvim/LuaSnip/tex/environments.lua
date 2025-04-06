local helpers = require("luasnip-helper-funcs")
local get_visual = helpers.get_visual
local tex_utils = helpers.tex_utils
local line_begin = require("luasnip.extras.conditions.expand").line_begin

return {
  s({trig = "env", snippetType = "autosnippet",
    regTrig = true, wordTrig = false, condition = line_begin},
    fmta(
      [[
        \begin{<>}
            <>
        \end{<>}
      ]],
      {
        i(1),
        i(0),
        rep(1),
      }
    )
  ),

  s({trig = "([^%a])nn", dscr = "A LaTeX equation environment",
    snippetType = "autosnippet", regTrig = true, wordTrig = false},
    fmta(
      [[
        <>
        \begin{equation*}
            <>
        \end{equation*}
      ]],
      {
        f( function(_, snip) return snip.captures[1] end),
        d(0, get_visual),
      }
    )
  ),

  s({trig = "aln", dscr = "Align env with suppressed numbering",
    snippetType = "autosnippet", condition = line_begin},
    fmta(
      [[
        \begin{align*}
            <>
        \end{align*}
      ]],
      {
        i(0)
      }
    )
  ),

  s({trig = "itt", condition = line_begin,
    dscr = "Itemize environment", snippetType = "autosnippet"},
    fmta(
      [[
        \begin{itemize}

            \item <>
        
        \end{itemize}
      ]],
      {
        i(0)
      }
    )
  ),
  
  s({trig = "enn", condition = line_begin,
    dscr = "Enumerate environment", snippetType = "autosnippet"},
    fmta(
      [[
        <>\begin{enumerate}

            \item <>
        
        \end{enumerate}
      ]],
      {
        f( function(_, snip) return snip.captures[1] end),
        i(0)
      }
    )
  ),

  s(
    {
      trig = "([^%a^%\\])pm",
      dscr = "Pmatrix environment",
      regTrig = true,
      wordTrig = false,
      snippetType = "autosnippet",
      condition = tex_utils.in_mathzone
    },
    fmta(
      [[
        <>\begin{pmatrix}
            <>
        \end{pmatrix}<>
      ]],
      {
        f( function(_, snip) return snip.captures[1] end),
        i(0)
      }
    )
  ),

  s(
    {
      trig = "prf",
      dscr = "Amsmath proof environment",
      regTrig = true,
      wordTrig = false,
      snippetType = "autosnippet",
      condition = line_begin
    },
    fmta(
      [[
        \begin{proof}
            <>
        \end{proof}
      ]],
      {
        d(0, get_visual),
      }
    )
  ),
}
