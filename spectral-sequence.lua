function entry(x, y)
    return "{A_{{" .. x .. "},{" .. y .. "}}"
end

function sheet(xstart, xend, ystart, yend, entry)
    out = [[{\newcolumntype{C}{>{\centering\arraybackslash}X}
     \begin{tabularx}{\textwidth}{C}
	  \hline
	  Cell1 & Cell2               & Cell3        \\
	  \hline
	  Cell4 & Cell5               & CellCellCell \\
	  \hline
	  Cell7 & {Cell8\newline row} & Cell9        \\
	  \hline
     \end{tabularx}
    ]]
    for x = xstart, xend do
        for y = ystart, yend do
            out = out .. "&" .. entry(x, y)
        end
        out = out .. "\\\\"
    end
end
