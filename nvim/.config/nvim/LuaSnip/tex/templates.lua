local helpers = require("luasnip-helper-funcs")
local get_visual = helpers.get_visual
local tex_utils = helpers.tex_utils
local line_begin = require("luasnip.extras.conditions.expand").line_begin

return {
  s(
    {
      trig = "template",
      dscr = "Basic Template",
      condition = line_begin,
    },
    fmta([[
      \documentclass{article}
      \usepackage{graphicx}
      \usepackage{geometry}
      \usepackage{latexsym,amsfonts,amssymb,amsthm,amsmath}
      \usepackage{hyperref}

      \title{}
      \author{}

      \begin{document}

      \maketitle

      <>

      \end{document}
    ]],{i(0)})
  ),

  s(
    {
      trig = "theorems",
      dscr = "Maths environments (e.g. lemma, proof, etc)",
      condition = line_begin,
    },
    {t(
      [[
      \newtheorem{theorem}{Theorem}[section]
      \newtheorem{corollary}{Corollary}[theorem]
      \newtheorem*{lemma}{Lemma}

      \theoremstyle{definition}
      \newtheorem*{definition}{Definition}

      \theoremstyle{remark}
      \newtheorem*{remark}{Remark}
      ]]
    )}
  ),

  s(
    {
      trig = "vccommands",
      dscr = "Vector calculus commands",
      condition = line_begin,
    },
    {t(
      [[
      \renewcommand{\vec}[1]{\mathbf{#1}}
      \newcommand{\uvec}[1]{\mathop{} \!\hat{\mathbf{#1}}}
      \newcommand{\mat}[1]{\mathbf{#1}}
      \newcommand{\tensor}[1]{\mathsf{#1}}

      \renewcommand{\div}{\nabla \cdot}
      \renewcommand{\curl}{\nabla \cross}
      \renewcommand{\grad}{\nabla}
      \renewcommand{\laplacian}{\nabla^{2}}
      ]]
    )}
  ),
}
