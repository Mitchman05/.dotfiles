local helpers = require("luasnip-helper-funcs")
local get_visual = helpers.get_visual
local tex_utils = helpers.tex_utils

return {
  -- Subscripts and superscripts
  s(
    {
      trig = "([%w%)%]%}])%'",
      regTrig = true,
      wordTrig = false,
      dscr = "Superscript",
      snippetType = "autosnippet",
      condition = tex_utils.in_mathzone,
    },
    fmta(
      "<>^{<>}",
      {
        f( function(_, snip) return snip.captures[1] end ),
        d(1, get_visual)
      }
    )
  ),

  s(
    {
      trig = "([%w%)%]%}])_",
      regTrig = true,
      wordTrig = false,
      dscr = "Subscript",
      snippetType = "autosnippet",
      condition = tex_utils.in_mathzone,
    },
    fmta(
      "<>_{<>}",
      {
        f( function(_, snip) return snip.captures[1] end ),
        d(1, get_visual)
      }
    )
  ),

  s(
    {
      trig = "ee",
      dscr = "e^{}",
      condition = tex_utils.in_mathzone,
      snippetType = "autosnippet",
    },
    fmta(
      "e^{<>}",
      {
        d(1, get_visual),
      }
    )
  ),
  
  s(
    {
      trig = '([%a%)%]%}])00',
      dscr = "Automatic 0 subscript",
      regTrig = true,
      wordTrig = false,
      snippetType="autosnippet",
      condition = tex_utils.in_mathzone
    },
    fmta(
      "<>_{<>}",
      {
        f( function(_, snip) return snip.captures[1] end ),
        t("0")
      }
    )
  ),


  -- Semantic Commands
  s(
    {
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
      trig = "sq",
      dscr = "\\sqrt{}",
      condition = tex_utils.in_mathzone,
      snippetType = "autosnippet",
    },
    fmta(
      "\\sqrt(<>)",
      {
        d(1, get_visual)
      }
    )
  ),

  s(
    {
      trig = "vv",
      dscr = "\\vec",
      condition = tex_utils.in_mathzone,
      snippetType = "autosnippet"
    },
    fmta(
      "\\vec{<>}",
      {
        d(1, get_visual)
      }
    )
  ),

  s(
    {
      trig = "hh",
      dscr = "\\hat",
      condition = tex_utils.in_mathzone,
      snippetType = "autosnippet"
    },
    fmta(
      "\\hat{<>}",
      {
        d(1, get_visual)
      }
    )
  ),

  s(
    {
      trig = "bb",
      dscr = "\\bar",
      condition = tex_utils.in_mathzone,
      snippetType = "autosnippet"
    },
    fmta(
      "\\bar{<>}",
      {
        d(1, get_visual)
      }
    )
  ),

  -- Integrals
  s(
    {
      trig = "intt",
      dscr = "Integral with upper and lower limit",
      condition = tex_utils.in_mathzone,
      snippetType = "autosnippet"
    },
    fmta(
      "\\int_{<>}^{<>} <>",
      {
        i(1),
        i(2),
        i(0),
      }
    )
  ),

  s(
    {
      trig = "innt",
      dscr = "Integral with equal upper and lower limit",
      condition = tex_utils.in_mathzone,
      snippetType = "autosnippet"
    },
    fmta(
      "\\int_{-<>}^{<>} <>",
      {
        i(1),
        i(1),
        i(0),
      }
    )
  ),

  s(
    {
      trig = "int2",
      dscr = "\\iint",
      condition = tex_utils.in_mathzone,
      snippetType = "autosnippet"
    },
    {
      t("\\iint"),
    }
  ),

  s(
    {
      trig = "int3",
      dscr = "\\iiint",
      condition = tex_utils.in_mathzone,
      snippetType = "autosnippet"
    },
    {
      t("\\iiint"),
    }
  ),

  -- Sums
  s(
    {
      trig = "sM",
      dscr = "Sum with only lower limit",
      condition = tex_utils.in_mathzone,
      snippetType = "autosnippet"
    },
    fmta(
      "\\sum_{<>} <>",
      {
        i(1),
        i(0),
      }
    )
  ),

  s(
    {
      trig = "smm",
      dscr = "Sum with upper and lower limit",
      condition = tex_utils.in_mathzone,
      snippetType = "autosnippet"
    },
    fmta(
      "\\sum_{<>}^{<>} <>",
      {
        i(1),
        i(2),
        i(0),
      }
    )
  ),

  s(
    {
      trig = "smf",
      dscr = "Sum from negative to positive infinity",
      condition = tex_utils.in_mathzone,
      snippetType = "autosnippet"
    },
    fmta(
      "\\sum_{-\\infty}^{\\infty} <>",
      {
        i(0),
      }
    )
  ),

  s(
    {
      trig = "lsM",
      dscr = "Inline math sum with only lower limit",
      condition = tex_utils.in_mathzone,
      snippetType = "autosnippet"
    },
    fmta(
      "\\sum \\limits_{<>} <>",
      {
        i(1),
        i(0),
      }
    )
  ),

  s(
    {
      trig = "lsmm",
      dscr = "Inline math sum with upper and lower limit",
      condition = tex_utils.in_mathzone,
      snippetType = "autosnippet"
    },
    fmta(
      "\\sum \\limits_{<>}^{<>} <>",
      {
        i(1),
        i(2),
        i(0)
      }
    )
  ),

  -- Limits
  s(
    {
      trig = "lM",
      dscr = "\\limits{} with only lower limit",
      condition = tex_utils.in_mathzone,
      snippetType = "autosnippet"
    },
    fmta(
      "\\limits_{<>} <>",
      {
        i(1),
        i(0)
      }
    )
  ),

  s(
    {
      trig = "lmm",
      dscr = "\\limits{} with upper and lower limit",
      condition = tex_utils.in_mathzone,
      snippetType = "autosnippet"
    },
    fmta(
      "\\limits_{<>}^{<>} <>",
      {
        i(1),
        i(2),
        i(0)
      }
    )
  ),

  -- Static math snippets
  s(
    {
      trig = "inff",
      dscr = "\\infty",
      condition = tex_utils.in_mathzone,
      snippetType = "autosnippet"
    },
    { t("\\infty") }
  ),

  s(
    {
      trig = "intf",
      dscr = "Integral from negative to positive infinity",
      condition = tex_utils.in_mathzone,
      snippetType = "autosnippet"
    },
    { t("\\int_{-\\infty}^{\\infty}") }
  ),

  s(
    {
      trig = "del",
      dscr = "\\partial",
      condition = tex_utils.in_mathzone,
      snippetType = "autosnippet"
    },
    { t("\\partial") }
  ),

  s(
    {
      trig = ">>",
      dscr = "\\implies",
      condition = tex_utils.in_mathzone,
      snippetType = "autosnippet"
    },
    { t("\\implies") }
  ),

  s(
    {
      trig = "lra",
      dscr = "\\leftrightarrow",
      condition = tex_utils.in_mathzone,
      snippetType = "autosnippet"
    },
    { t("\\leftrightarrow") }
  ),

  s(
    {
      trig = "div",
      dscr = "Divergence",
      condition = tex_utils.in_mathzone,
      snippetType = "autosnippet"
    },
    { t("\\nabla \\cdot") }
  ),

  s(
    {
      trig = "curl",
      dscr = "Curl",
      condition = tex_utils.in_mathzone,
      snippetType = "autosnippet"
    },
    { t("\\nabla \\times") }
  ),

  s(
    {
      trig = "pt",
      dscr = "\\propto",
      condition = tex_utils.in_mathzone,
      snippetType = "autosnippet"
    },
    { t("\\propto") }
  ),

  s(
    {
      trig = "px",
      dscr = "\\approx",
      condition = tex_utils.in_mathzone,
      snippetType = "autosnippet"
    },
    { t("\\approx") }
  ),

  s(
    {
      trig = "eqq",
      dscr = "\\equiv",
      condition = tex_utils.in_mathzone,
      snippetType = "autosnippet"
    },
    { t("\\equiv") }
  ),

  s(
    {
      trig = "xx",
      dscr = "\\times",
      condition = tex_utils.in_mathzone,
      snippetType = "autosnippet"
    },
    { t("\\times") }
  ),

  s(
    {
      trig = ",.",
      dscr = "\\cdot",
      condition = tex_utils.in_mathzone,
      snippetType = "autosnippet"
    },
    { t("\\cdot" )}
  ),

  s(
    {
      trig = "([lcvd])dd",
      dscr = "\\(lcvd)dots",
      condition = tex_utils.in_mathzone,
      snippetType = "autosnippet"
    },
    fmta(
      "\\<>dots",
      {
        f( function(_, snip) return snip.captures[1] end ),
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


}
