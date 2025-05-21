local helpers = require("luasnip-helper-funcs")
local get_visual = helpers.get_visual
local tex_utils = helpers.tex_utils
local line_begin = require("luasnip.extras.conditions.expand").line_begin
local line_end = require("luasnip.extras.conditions.expand").line_end

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

  s({trig = "([^%a?])nn", dscr = "A LaTeX equation environment",
    snippetType = "autosnippet", regTrig = true, wordTrig = false},
    fmta(
      [[
        <>
        \begin{equation*}
            <>
        \end{equation*}
      ]],
      {
        f( function(_, snip) return snip.captures[1] end ),
        d(1, get_visual),
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
      trig = "([^%\\?])pm",
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
        \end{pmatrix}
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
        i(0),
      }
    )
  ),

  s(
    {
      trig = "defn",
      dscr = "Amsmath solution environment",
      snippetType = "autosnippet",
      condition = line_begin
    },
    fmta(
      [[
        \begin{definition}
            <>
        \end{definition}
      ]],
      {
        i(0),
      }
    )
  ),

  s(
    {
      trig = "soln",
      dscr = "Amsmath solution environment",
      snippetType = "autosnippet",
      condition = line_begin
    },
    fmta(
      [[
        \begin{solution}
            <>
        \end{solution}
      ]],
      {
        i(0),
      }
    )
  ),

  s(
    {
      trig = "thm",
      dscr = "Amsmath theorem environment",
      snippetType = "autosnippet",
      condition = line_begin
    },
    fmta(
      [[
        \begin{theorem}
            <>
        \end{theorem}
      ]],
      {
        i(0),
      }
    )
  ),

  s(
    {
      trig = "rmk",
      dscr = "Amsmath remark environment",
      snippetType = "autosnippet",
      condition = line_begin
    },
    fmta(
      [[
        \begin{remark}
            <>
        \end{remark}
      ]],
      {
        i(0),
      }
    )
  ),

  s(
    {
      trig = "lma",
      dscr = "Amsmath lemma environment",
      snippetType = "autosnippet",
      condition = line_begin
    },
    fmta(
      [[
        \begin{lemma}
            <>
        \end{lemma}
      ]],
      {
        i(0),
      }
    )
  ),

  s(
    {
      trig = "tkz",
      dscr = "Tikz graphics environment",
      snippetType = "autosnippet",
      condition = line_begin
    },
    fmta(
      [[
        \begin{tikzpicture}
            <>
        \end{tikzpicture}
      ]],
      {
        d(1, get_visual),
      }
    )
  ),

}
