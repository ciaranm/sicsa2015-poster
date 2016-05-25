# vim: set et ft=gnuplot sw=4 :

set terminal tikz size 11.2in,6.5in
set output "gen-graph-speedup.tex"

set multiplot layout 2,2 spacing 0.15, 0.2 margins 0, 0.9, 0.05, 1

set format x '%0.0f'
set format y '%0.0f'

set key left center Left at screen 0.95, graph 0.5 height 3 spacing 3 samplen 5 width 10

set tics front

set xlabel "Number of Threads" offset character 0, character -1.5
set ylabel "Absolute Speedup" offset character -6, character 0

set border 0

set xtics (2, 16, 32, 48, 64) nomirror border rangelimited out
set ytics nomirror border scale 0
set grid ytics back lc '#BAB5B1'

set xrange [0:64]
set yrange [0:]

set title "Clique MANN\\underline{~}a45 (438s)"
plot \
    "plots/graph-togian-MANN_a45-speedup-cilk.data" u 1:2 with l lc '#ffb948' lt 2 lw 5 ti "Intel Cilk Plus", \
    "plots/graph-togian-MANN_a45-speedup-nodonation.data" u 1:2 with l lc '#84bd00' lt 1 lw 5 ti "Depth 1", \
    "plots/graph-togian-MANN_a45-speedup-nodonation-depth2.data" u 1:2 with l lc '#009dec' lt 1 lw 5 ti 'Depth 2', \
    "plots/graph-togian-MANN_a45-speedup-nodonation-depth3.data" u 1:2 with l lc '#951272' lt 1 lw 5 ti "Depth 3", \
    "plots/graph-togian-MANN_a45-speedup-d3.data" u 1:2 with l lc '#003865' lt 2 lw 5 ti "Resplitting"

set key off

set title "Clique brock400\\underline{~}1 (371s)"

set xtics (2, 16, 32, 48, 64) nomirror border rangelimited out
set ytics nomirror border scale 0
set grid ytics back lc '#BAB5B1'

set xrange [0:64]
set yrange [0:]

plot \
    "plots/graph-togian-brock400_1-speedup-cilk.data" u 1:2 with l lc '#ffb948' lt 2 lw 5 ti "Cilk", \
    "plots/graph-togian-brock400_1-speedup-nodonation.data" u 1:2 with l lc '#84bd00' lt 1 lw 5 ti "Depth 1", \
    "plots/graph-togian-brock400_1-speedup-nodonation-depth2.data" u 1:2 with l lc '#009dec' lt 1 lw 5 ti 'Depth 2', \
    "plots/graph-togian-brock400_1-speedup-nodonation-depth3.data" u 1:2 with l lc '#951272' lt 1 lw 5 ti "Depth 3", \
    "plots/graph-togian-brock400_1-speedup-d3.data" u 1:2 with l lc '#003865' lt 2 lw 5 ti "Resplitting"

set xtics (16, 32, 48, 64) nomirror border rangelimited out
set ytics nomirror border scale 0
set grid ytics back lc '#BAB5B1'

set xrange [0:64]
set yrange [0:]

set title "Clique gen400\\underline{~}p0.9\\underline{~}75 (3.68 days)"
plot \
    "plots/graph-togian-gen400_p0.9_75-speedup-cilk.data" u 1:2 with l lc '#ffb948' lt 2 lw 5 ti "Cilk", \
    "plots/graph-togian-gen400_p0.9_75-speedup-nodonation.data" u 1:2 with l lc '#84bd00' lt 1 lw 5 ti "Depth 1", \
    "plots/graph-togian-gen400_p0.9_75-speedup-nodonation-depth2.data" u 1:2 with l lc '#009dec' lt 1 lw 5 ti 'Depth 2', \
    "plots/graph-togian-gen400_p0.9_75-speedup-nodonation-depth3.data" u 1:2 with l lc '#951272' lt 1 lw 5 ti "Depth 3", \
    "plots/graph-togian-gen400_p0.9_75-speedup-d3.data" u 1:2 with l lc '#003865' lt 2 lw 5 ti "Resplitting"

set xtics (2, 16, 32, 48, 64) nomirror border rangelimited out
set ytics nomirror border scale 0
set grid ytics back lc '#BAB5B1'

set xrange [0:64]
set yrange [0:]

set title "Clique brock400\\underline{~}3 (213s)"
plot \
    "plots/graph-togian-brock400_3-speedup-cilk.data" u 1:2 with l lc '#ffb948' lt 2 lw 5 ti "Cilk", \
    "plots/graph-togian-brock400_3-speedup-nodonation.data" u 1:2 with l lc '#84bd00' lt 1 lw 5 ti "Depth 1", \
    "plots/graph-togian-brock400_3-speedup-nodonation-depth2.data" u 1:2 with l lc '#009dec' lt 1 lw 5 ti 'Depth 2', \
    "plots/graph-togian-brock400_3-speedup-nodonation-depth3.data" u 1:2 with l lc '#951272' lt 1 lw 5 ti "Depth 3", \
    "plots/graph-togian-brock400_3-speedup-d3.data" u 1:2 with l lc '#003865' lt 2 lw 5 ti "Resplitting"

