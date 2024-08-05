set file [open "E:/TCL/report.txt" r]
set data [read $file]

set lines [split $data \n]

set file2 [open "E:/TCL/reportOut.txt" w]

foreach line $lines {
    if {[regexp -nocase "slack" $line] || [regexp -nocase "setup" $line]} {\
        puts $file2 $line
    }
}
close $file2
