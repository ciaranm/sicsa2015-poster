# vim: set et ft=gnuplot sw=4 :

set terminal tikz size 9in,7.5in
set output "gen-graph-speedup.tex"

set xlabel "Number of threads" offset 0,-5
set ylabel "Speedup" offset -8,0

set format x '%0.0f'
set format y '%0.0f'

set key off

set tics front

set border 0

set title "brock400\\_1, 64 core AMD Opteron 6366 HE" offset 0,4

set xtics (2, 16, 32, 48, 64) nomirror offset 0,-2 border rangelimited out
set ytics nomirror border scale 0
set grid ytics back lc '#52473b'

set xrange [0:64]
set yrange [0:]

plot \
    "graph-togian-brock400_1-speedup-nodonation.data" u 1:2 with l lc '#009dec' lt 1 lw 8 ti "Distance 1" at end, \
    "graph-togian-brock400_1-speedup-nodonation-depth2.data" u 1:2 with l lc '#951272' lt 1 lw 8 ti 'Distance 2' at end, \
    "graph-togian-brock400_1-speedup-nodonation-depth3.data" u 1:2 with l lc '#84bd00' lt 1 lw 8 ti "Distance 3" at end, \
    "graph-togian-brock400_1-speedup-d3.data" u 1:2 with l lc '#ffb948' lt 2 lw 8 ti "Resplitting" at end

