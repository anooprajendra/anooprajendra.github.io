---
documentclass: article
fontsize: 10pt
header-includes:
    - \usepackage{graphicx}
    - \usepackage[margin={2.5cm,2.5cm}]{geometry}
    - \newcommand{\hideFromPandoc}[1]{#1}
    - \hideFromPandoc{
        \let\Begin\begin
        \let\End\end
      }
    - \pagenumbering{gobble}

---
