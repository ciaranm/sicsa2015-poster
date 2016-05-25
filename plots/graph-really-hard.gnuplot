# vim: set et ft=gnuplot sw=4 :

set terminal tikz color size 17in,10in
set output "gen-graph-really-hard.tex"

unset xlabel
unset ylabel
set xrange [0:1]
set noxtics
set yrange [0:1]
set noytics
set size square
set cbtics out scale 0.5 nomirror offset -1

set multiplot layout 3,6 spacing 0.01, 0.05 margins 0, 0.98, 0, 1

set label 1 at screen -0.03, graph 0.5 center 'Satisfiable?' rotate by 90 front

load "uofgpumpkincobalt.pal"
unset colorbox

set xlabel "Pattern density $\\rightarrow$" offset character 0, character -0.5
set ylabel "Target density $\\rightarrow$" offset character -0.8, character 0
set title "10/150 vertices"
plot "plots/ps10-ts150.induced.proportion-sat.plot" u ($2/100):($1/100):($3) matrix w image notitle, \
    "plots/ps10-ts150.induced.predicted-line.plot" u 1:2 w line notitle lc "black", \
    "plots/ps10-ts150.induced.predicted-line.plot" u 4:5 w line notitle lc "black"

unset label 1
unset xlabel
unset ylabel

set title "14/150 vertices"
plot "plots/ps14-ts150.induced.proportion-sat.plot" u ($2/100):($1/100):($3) matrix w image notitle, \
    "plots/ps14-ts150.induced.predicted-line.plot" u 1:2 w line notitle lc "black", \
    "plots/ps14-ts150.induced.predicted-line.plot" u 4:5 w line notitle lc "black"

set title "15/150 vertices"
plot "plots/ps15-ts150.induced.proportion-sat.plot" u ($2/100):($1/100):($3) matrix w image notitle, \
    "plots/ps15-ts150.induced.predicted-line.plot" u 1:2 w line notitle lc "black", \
    "plots/ps15-ts150.induced.predicted-line.plot" u 4:5 w line notitle lc "black"

set title "16/150 vertices"
plot "plots/ps16-ts150.induced.proportion-sat.plot" u ($2/100):($1/100):($3) matrix w image notitle, \
    "plots/ps16-ts150.induced.predicted-line.plot" u 1:2 w line notitle lc "black", \
    "plots/ps16-ts150.induced.predicted-line.plot" u 4:5 w line notitle lc "black"

set title "20/150 vertices"
plot "plots/ps20-ts150.induced.proportion-sat.plot" u ($2/100):($1/100):($3) matrix w image notitle, \
    "plots/ps20-ts150.induced.predicted-line.plot" u 1:2 w line notitle lc "black", \
    "plots/ps20-ts150.induced.predicted-line.plot" u 4:5 w line notitle lc "black"

set title "30/150 vertices"
set cbtics 0.5 add ('never' 0) add ('half' 0.5) add ('always' 1)
set colorbox
plot "plots/ps30-ts150.induced.proportion-sat.plot" u ($2/100):($1/100):($3) matrix w image notitle, \
    "plots/ps30-ts150.induced.predicted-line.plot" u 1:2 w line notitle lc "black", \
    "plots/ps30-ts150.induced.predicted-line.plot" u 4:5 w line notitle lc "black"

load "uofgroseblue.pal"
set palette positive
set format cb '$\mathsf{10^{%.0f}}$'
unset colorbox
set cbrange [1:9]

set label 1 at screen -0.03, graph 0.5 center 'Mean Search Cost' rotate by 90 front

set notitle
plot "plots/ps10-ts150.induced.average-nodes.plot" u ($2/100):($1/100):(log10($3+1)) matrix w image notitle

unset label 1

set notitle
plot "plots/ps14-ts150.induced.average-nodes.plot" u ($2/100):($1/100):(log10($3+1)) matrix w image notitle

set notitle
plot "plots/ps15-ts150.induced.average-nodes.plot" u ($2/100):($1/100):(log10($3+1)) matrix w image notitle

set notitle
plot "plots/ps16-ts150.induced.average-nodes.plot" u ($2/100):($1/100):(log10($3+1)) matrix w image notitle

set notitle
plot "plots/ps20-ts150.induced.average-nodes.plot" u ($2/100):($1/100):(log10($3+1)) matrix w image notitle

set notitle
set colorbox
set cbtics 1, 2 add ('$\mathsf{{\le}10}$' 1) add ('$\mathsf{{\ge}10^{9}}$' 9)
plot "plots/ps30-ts150.induced.average-nodes.plot" u ($2/100):($1/100):(log10($3+1)) matrix w image notitle

load "uofgkappa.pal"
set palette negative
unset colorbox
set notitle
set cbrange [0:3]
set format cb '$\mathsf{%.0f}$'

set label 1 at screen -0.03, graph 0.5 center 'Constrainedness' rotate by 90 front

plot "plots/ps10-ts150.induced.kappa.plot" u ($1/100):($2/100):($3) matrix w image notitle

unset label 1

plot "plots/ps14-ts150.induced.kappa.plot" u ($1/100):($2/100):($3) matrix w image notitle

plot "plots/ps15-ts150.induced.kappa.plot" u ($1/100):($2/100):($3) matrix w image notitle

plot "plots/ps16-ts150.induced.kappa.plot" u ($1/100):($2/100):($3) matrix w image notitle

plot "plots/ps20-ts150.induced.kappa.plot" u ($1/100):($2/100):($3) matrix w image notitle

set cbtics 1 add ('$\mathsf{\ge4}$' 4)
set colorbox
plot "plots/ps30-ts150.induced.kappa.plot" u ($1/100):($2/100):($3) matrix w image notitle

