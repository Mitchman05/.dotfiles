local helpers = require("luasnip-helper-funcs")
local get_visual = helpers.get_visual
local tex_utils = helpers.tex_utils

return {
  s(
    {
      trig=";N", 
      snippetType = "autosnippet",
      dscr = "\\nabla",
      condition = tex_utils.in_mathzone,
    },
    {
      t("\\nabla"),
    }
  ),

  s(
    {
      trig=";a",
      snippetType = "autosnippet",
      dscr = "\\alpha",
      condition = tex_utils.in_mathzone,
    },
    {
      t("\\alpha"),
    }
  ),

  s(
    {
      trig=";b",
      snippetType = "autosnippet",
      dscr = "\\beta",
      condition = tex_utils.in_mathzone,
    },
    {
      t("\\beta"),
    }
  ),

  s(
    {
      trig=";g",
      snippetType = "autosnippet",
      dscr = "\\gamma",
      condition = tex_utils.in_mathzone,
    },
    {
      t("\\gamma"),
    }
  ),

  s(
    {
      trig=";G",
      snippetType = "autosnippet",
      dscr = "\\Gamma",
      condition = tex_utils.in_mathzone,
    },
    {
      t("\\Gamma"),
    }
  ),

  s(
    {
      trig=";d",
      snippetType = "autosnippet",
      dscr = "\\delta",
      condition = tex_utils.in_mathzone,
    },
    {
      t("\\delta"),
    }
  ),

  s(
    {
      trig=";D",
      snippetType = "autosnippet",
      dscr = "\\Delta",
      condition = tex_utils.in_mathzone,
    },
    {
      t("\\Delta"),
    }
  ),

  s(
    {
      trig=";e",
      snippetType = "autosnippet",
      dscr = "\\epsilon",
      condition = tex_utils.in_mathzone,
    },
    {
      t("\\epsilon"),
    }
  ),

  s(
    {
      trig=";ve",
      snippetType = "autosnippet",
      dscr = "\\varepsilon",
      condition = tex_utils.in_mathzone,
    },
    {
      t("\\varepsilon"),
    }
  ),

  s(
    {
      trig=";z",
      snippetType = "autosnippet",
      dscr = "\\zeta",
      condition = tex_utils.in_mathzone,
    },
    {
      t("\\zeta"),
    }
  ),

  s(
    {
      trig=";t",
      snippetType = "autosnippet",
      dscr = "\\theta",
      condition = tex_utils.in_mathzone,
    },
    {
      t("\\theta"),
    }
  ),

  s(
    {
      trig=";vt",
      snippetType = "autosnippet",
      dscr = "\\vartheta",
      condition = tex_utils.in_mathzone,
    },
    {
      t("\\vartheta"),
    }
  ),

  s(
    {
      trig=";T",
      snippetType = "autosnippet",
      dscr = "\\Theta",
      condition = tex_utils.in_mathzone,
    },
    {
      t("\\Theta"),
    }
  ),

  s(
    {
      trig=";l",
      snippetType = "autosnippet",
      dscr = "\\lambda",
      condition = tex_utils.in_mathzone,
    },
    {
      t("\\lambda"),
    }
  ),

  s(
    {
      trig=";L",
      snippetType = "autosnippet",
      dscr = "\\Lambda",
      condition = tex_utils.in_mathzone,
    },
    {
      t("\\Lambda"),
    }
  ),

  s(
    {
      trig=";m",
      snippetType = "autosnippet",
      dscr = "\\mu",
      condition = tex_utils.in_mathzone,
    },
    {
      t("\\mu"),
    }
  ),

  s(
    {
      trig=";p",
      snippetType = "autosnippet",
      dscr = "\\pi",
      condition = tex_utils.in_mathzone,
    },
    {
      t("\\pi"),
    }
  ),

  s(
    {
      trig=";P",
      snippetType = "autosnippet",
      dscr = "\\Pi",
      condition = tex_utils.in_mathzone,
    },
    {
      t("\\Pi"),
    }
  ),

  s(
    {
      trig=";r",
      snippetType = "autosnippet",
      dscr = "\\rho",
      condition = tex_utils.in_mathzone,
    },
    {
      t("\\rho"),
    }
  ),

  s(
    {
      trig=";s",
      snippetType = "autosnippet",
      dscr = "\\sigma",
      condition = tex_utils.in_mathzone,
    },
    {
      t("\\sigma"),
    }
  ),

  s(
    {
      trig=";S",
      snippetType = "autosnippet",
      dscr = "\\Sigma",
      condition = tex_utils.in_mathzone,
    },
    {
      t("\\Sigma"),
    }
  ),

  s(
    {
      trig=";t",
      snippetType = "autosnippet",
      dscr = "\\tau",
      condition = tex_utils.in_mathzone,
    },
    {
      t("\\tau"),
    }
  ),

  s(
    {
      trig=";f",
      snippetType = "autosnippet",
      dscr = "\\phi",
      condition = tex_utils.in_mathzone,
    },
    {
      t("\\phi"),
    }
  ),

  s(
    {
      trig=";F",
      snippetType = "autosnippet",
      dscr = "\\Phi",
      condition = tex_utils.in_mathzone,
    },
    {
      t("\\Phi"),
    }
  ),

  s(
    {
      trig=";vf",
      snippetType = "autosnippet",
      dscr = "\\varphi",
      condition = tex_utils.in_mathzone,
    },
    {
      t("\\varphi"),
    }
  ),

  s(
    {
      trig=";p",
      snippetType = "autosnippet",
      dscr = "\\psi",
      condition = tex_utils.in_mathzone,
    },
    {
      t("\\psi"),
    }
  ),

  s(
    {
      trig=";P",
      snippetType = "autosnippet",
      dscr = "\\Psi",
      condition = tex_utils.in_mathzone,
    },
    {
      t("\\Psi"),
    }
  ),

  s(
    {
      trig=";w",
      snippetType = "autosnippet",
      dscr = "\\omega",
      condition = tex_utils.in_mathzone,
    },
    {
      t("\\omega"),
    }
  ),

  s(
    {
      trig=";W",
      snippetType = "autosnippet",
      dscr = "\\Omega",
      condition = tex_utils.in_mathzone,
    },
    {
      t("\\Omega"),
    }
  ),
}
