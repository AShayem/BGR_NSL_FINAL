gds read BGR_TOP.klay.gds
load BGR_TOP
select top cell
puts "---- labels in BGR_TOP ----"
foreach l [lsort -unique [select list label]] { puts $l }
quit -noprompt
