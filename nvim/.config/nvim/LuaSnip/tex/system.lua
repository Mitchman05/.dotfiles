local line_start = requre("luasnip.extras.conditions.expand").line_start

return {
  -- Preamble snipppets
  s({trig = "nc", dcsr = "\\newcommand{}{}", condition = line_start},
    fmta(
      "\\newcommand{<>}{<>}",
      {i(1), i(2)}
    )
  ), 

  s({trig = "rnc", dcsr = "\\renewcommand{}{}", condition = line_start},
    fmta(
      "\\renewcommand{<>}{<>}",
      {i(1), i(2)}
    )
  ), 

  s({trig = "pck", dcsr = "\\usepackage{}", condition = line_start},
    fmta(
      "\\usepackage{<>}",
      {i(1)}
    )
  ), 

  

  -- Sectioning snippets
  s({trig = "h1", dcsr = "New section", condition = line_start},
    fmta(
      "\\section{<>}",
      {i(1)}
    )
  ), 

  s({trig = "h2", dcsr = "New subsection", condition = line_start},
    fmta(
      "\\subsection{<>}",
      {i(1)}
    )
  ), 

  s({trig = "h3", dcsr = "New subsubsection", condition = line_start},
    fmta(
      "\\subsubsection{<>}",
      {i(1)}
    )
  ), 

  s({trig = "np", dcsr = "\\newpage", condition = line_start},
    {t("\\newpage")}
  ), 


}
