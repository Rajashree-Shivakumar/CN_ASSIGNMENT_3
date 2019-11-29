set ns [new Simulator]

set tf [open file1.tr w]
$ns trace-all $tf

set nf [open file1.nam w]
$ns namtrace-all $nf

set A [$ns node]
set B [$ns node]

$A label "PingA"

$ns color 1 "red@

$ns duplex-link $A $B 100Mb 300ms DropTail

set pingA [new Agent/Ping]
$ns attach-agent $A $pingA

$pingA set interval_ 60

proc finish{ } {
global ns nftf
exec nam file1.nam &
$ns flush-trace
close $tf
close $nf
exit 0
}

$ns at 1 "pingA send"
$ns at 2 "pingA send"
$ns at 3 "pingA send"
$ns at 4 "pingA send"
$ns at 5 "pingA send"
$ns at 6 "pingA send"
$ns at 7 "pingA send"
$ns at 8 "pingA send"
$ns at 9 "pingA send"
$ns at 10 "pingA send"
$ns at 11 "pingA send"
$ns at 12 "pingA send"
$ns at 13 "pingA send"
$ns at 14 "pingA send"
$ns at 15 "pingA send"
$ns at 16 "pingA send"
$ns at 17 "pingA send"
$ns at 18 "pingA send"
$ns at 19 "pingA send"
$ns at 20 "pingA send"
$ns at 21 "pingA send"
$ns at 22 "pingA send"
$ns at 23 "pingA send"
$ns at 24 "pingA send"
$ns at 25 "pingA send"
$ns at 26 "pingA send"
$ns at 27 "pingA send"
$ns at 28 "pingA send"
$ns at 29 "pingA send"
$ns at 30 "pingA send"
$ns at 31 "pingA send"
$ns at 32 "pingA send"
$ns at 33 "pingA send"
$ns at 34 "pingA send"
$ns at 35 "pingA send"
$ns at 36 "pingA send"
$ns at 37 "pingA send"
$ns at 38 "pingA send"
$ns at 39 "pingA send"
$ns at 40 "pingA send"
$ns at 41 "pingA send"
$ns at 42 "pingA send"
$ns at 43 "pingA send"
$ns at 44 "pingA send"
$ns at 45 "pingA send"
$ns at 46 "pingA send"
$ns at 47 "pingA send"
$ns at 48 "pingA send"
$ns at 49 "pingA send"
$ns at 50 "pingA send"
$ns at 51 "pingA send"
$ns at 52 "pingA send"
$ns at 53 "pingA send"
$ns at 54 "pingA send"
$ns at 55 "pingA send"
$ns at 56 "pingA send"
$ns at 57 "pingA send"
$ns at 58 "pingA send"
$ns at 59 "pingA send"
$ns at 60 "pingA send"

$ns at 180 "finish"
$ns run
