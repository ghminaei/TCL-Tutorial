set ns [new Simulator]

$ns color 1 Red
$ns color 2 Blue

set tr [open "out.tr" w]
$ns trace-all $tr

set ftr [open "out.nam" w]
$ns namtrace-all $ftr

proc finish {} {
    global ns tr ftr
    $ns flush-trace
    close $tr
    close $ftr
    exec nam out.nam &
    exit
}

set n0 [$ns node]
$n0 shape box

set n1 [$ns node]
set n2 [$ns node]
set n3 [$ns node]
set n4 [$ns node]

$ns duplex-link $n0 $n1 2mb 3ms DropTail
$ns duplex-link $n0 $n2 2mb 3ms DropTail
$ns duplex-link $n0 $n3 2mb 3ms DropTail
$ns duplex-link $n0 $n4 2mb 3ms DropTail


set tcp0 [new Agent/TCP]
set sink [new Agent/TCPSink]
$ns attach-agent $n1 $tcp0
$ns attach-agent $n2 $sink
$ns connect $tcp0 $sink
set ftp [new Application/FTP]
$ftp attach-agent $tcp0
$tcp0 set fid_ 1


set tcp1 [new Agent/TCP]
set sink1 [new Agent/TCPSink]
$ns attach-agent $n3 $tcp1
$ns attach-agent $n4 $sink1
$ns connect $tcp1 $sink1
set cbr [new Application/Traffic/CBR]
$cbr attach-agent $tcp1
$tcp1 set fid_ 2


$ns at .1 "$ftp start"
$ns at .2 "$cbr start"
$ns at 2.0 "$ftp stop"
$ns at 2.0 "$cbr stop"
$ns at 2.1 "finish"

$ns run