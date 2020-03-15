set val(chan)   Channel/WirelessChannel    ;# channel type
set val(prop)   Propagation/TwoRayGround   ;# radio-propagation model
set val(netif)  Phy/WirelessPhy            ;# network interface type
set val(mac)    Mac/802_11                 ;# MAC type
set val(ifq)    Queue/DropTail/PriQueue    ;# interface queue type
set val(ll)     LL                         ;# link layer type
set val(ant)    Antenna/OmniAntenna        ;# antenna model
set val(ifqlen) 1000                       ;# max packet in ifq
set val(nn)     30                         ;# number of mobilenodes
set val(rp)     AODV                       ;# routing protocol
set val(x)      600                        ;# X dimension of topography
set val(y)      600                        ;# Y dimension of topography
set val(stop)   80.0                       ;# time of simulation end

set ns [new Simulator]


set topo       [new Topography]
$topo load_flatgrid $val(x) $val(y)
create-god $val(nn)


set tracefile [open 192474_IT822_AODV.tr w]
$ns trace-all $tracefile
$ns use-newtrace


set namfile [open 192474_IT822_AODV.nam w]
$ns namtrace-all $namfile
$ns namtrace-all-wireless $namfile $val(x) $val(y)
set chan [new $val(chan)];#Create wireless channel


$ns node-config -adhocRouting  $val(rp) \
                -llType        $val(ll) \
                -macType       $val(mac) \
                -ifqType       $val(ifq) \
                -ifqLen        $val(ifqlen) \
                -antType       $val(ant) \
                -propType      $val(prop) \
                -phyType       $val(netif) \
                -channel       $chan \
                -topoInstance  $topo \
                -agentTrace    ON \
                -routerTrace   ON \
                -macTrace      ON \
                -movementTrace ON


set n0 [$ns node]
$n0 set X_ 23
$n0 set Y_ 314
$n0 set Z_ 0.0
$ns initial_node_pos $n0 20
set n1 [$ns node]
$n1 set X_ 93
$n1 set Y_ 379
$n1 set Z_ 0.0
$ns initial_node_pos $n1 20
set n2 [$ns node]
$n2 set X_ 85
$n2 set Y_ 214
$n2 set Z_ 0.0
$ns initial_node_pos $n2 20
set n3 [$ns node]
$n3 set X_ 146
$n3 set Y_ 299
$n3 set Z_ 0.0
$ns initial_node_pos $n3 20
set n4 [$ns node]
$n4 set X_ 217
$n4 set Y_ 200
$n4 set Z_ 0.0
$ns initial_node_pos $n4 20
set n5 [$ns node]
$n5 set X_ 219
$n5 set Y_ 397
$n5 set Z_ 0.0
$ns initial_node_pos $n5 20
set n6 [$ns node]
$n6 set X_ 252
$n6 set Y_ 310
$n6 set Z_ 0.0
$ns initial_node_pos $n6 20
set n7 [$ns node]
$n7 set X_ 315
$n7 set Y_ 400
$n7 set Z_ 0.0
$ns initial_node_pos $n7 20
set n8 [$ns node]
$n8 set X_ 342
$n8 set Y_ 309
$n8 set Z_ 0.0
$ns initial_node_pos $n8 20
set n9 [$ns node]
$n9 set X_ 152
$n9 set Y_ 444
$n9 set Z_ 0.0
$ns initial_node_pos $n9 20
set n10 [$ns node]
$n10 set X_ 162
$n10 set Y_ 120
$n10 set Z_ 0.0
$ns initial_node_pos $n10 20
set n11 [$ns node]
$n11 set X_ 392
$n11 set Y_ 433
$n11 set Z_ 0.0
$ns initial_node_pos $n11 20
set n12 [$ns node]
$n12 set X_ 400
$n12 set Y_ 224
$n12 set Z_ 0.0
$ns initial_node_pos $n12 20
set n13 [$ns node]
$n13 set X_ 323
$n13 set Y_ 149
$n13 set Z_ 0.0
$ns initial_node_pos $n13 20
set n14 [$ns node]
$n14 set X_ 485
$n14 set Y_ 343
$n14 set Z_ 0.0
$ns initial_node_pos $n14 20
set n15 [$ns node]
$n15 set X_ 492
$n15 set Y_ 409
$n15 set Z_ 0.0
$ns initial_node_pos $n15 20
set n16 [$ns node]
$n16 set X_ 487
$n16 set Y_ 262
$n16 set Z_ 0.0
$ns initial_node_pos $n16 20
set n17 [$ns node]
$n17 set X_ 436
$n17 set Y_ 137
$n17 set Z_ 0.0
$ns initial_node_pos $n17 20
set n18 [$ns node]
$n18 set X_ 535
$n18 set Y_ 152
$n18 set Z_ 0.0
$ns initial_node_pos $n18 20
set n19 [$ns node]
$n19 set X_ 566
$n19 set Y_ 273
$n19 set Z_ 0.0
$ns initial_node_pos $n19 20
set n20 [$ns node]
$n20 set X_ 569
$n20 set Y_ 352
$n20 set Z_ 0.0
$ns initial_node_pos $n20 20
set n21 [$ns node]
$n21 set X_ 189
$n21 set Y_ 343
$n21 set Z_ 0.0
$ns initial_node_pos $n21 20
set n22 [$ns node]
$n22 set X_ 319
$n22 set Y_ 226
$n22 set Z_ 0.0
$ns initial_node_pos $n22 20
set n23 [$ns node]
$n23 set X_ 265
$n23 set Y_ 446
$n23 set Z_ 0.0
$ns initial_node_pos $n23 20
set n24 [$ns node]
$n24 set X_ 269
$n24 set Y_ 94
$n24 set Z_ 0.0
$ns initial_node_pos $n24 20
set n25 [$ns node]
$n25 set X_ 375
$n25 set Y_ 87
$n25 set Z_ 0.0
$ns initial_node_pos $n25 20
set n26 [$ns node]
$n26 set X_ 482
$n26 set Y_ 84
$n26 set Z_ 0.0
$ns initial_node_pos $n26 20
set n27 [$ns node]
$n27 set X_ 30
$n27 set Y_ 192
$n27 set Z_ 0.0
$ns initial_node_pos $n27 20
set n28 [$ns node]
$n28 set X_ 63
$n28 set Y_ 419
$n28 set Z_ 0.0
$ns initial_node_pos $n28 20
set n29 [$ns node]
$n29 set X_ 73
$n29 set Y_ 113
$n29 set Z_ 0.0
$ns initial_node_pos $n29 20


$ns at 0 " $n1 setdest 436 222 3 " 
$ns at 0 " $n2 setdest 321 123 14 " 
$ns at 3 " $n5 setdest 420 200 9 " 
$ns at 1 " $n8 setdest 500 10 20 " 
$ns at 0 " $n9 setdest 10 300 20 " 
$ns at 2 " $n12 setdest 222 11 7 " 
$ns at 1 " $n13 setdest 392 400 10 " 
$ns at 5 " $n16 setdest 456 456 10 " 
$ns at 1 " $n17 setdest 342 300 4 " 
$ns at 2 " $n21 setdest 333 444 30 " 
$ns at 1 " $n24 setdest 342 436 4 " 
$ns at 0 " $n27 setdest 554 222 2 " 

  
#Setup a UDP connection
set udp0 [new Agent/UDP]
$ns attach-agent $n28 $udp0
set null3 [new Agent/Null]
$ns attach-agent $n18 $null3
$ns connect $udp0 $null3
$udp0 set packetSize_ 1500


set udp1 [new Agent/UDP]
$ns attach-agent $n29 $udp1
set null5 [new Agent/Null]
$ns attach-agent $n15 $null5
$ns connect $udp1 $null5
$udp1 set packetSize_ 1500


set udp2 [new Agent/UDP]
$ns attach-agent $n23 $udp2
set null4 [new Agent/Null]
$ns attach-agent $n25 $null4
$ns connect $udp2 $null4
$udp2 set packetSize_ 1500


#Setup a CBR Application over UDP connection
set cbr0 [new Application/Traffic/CBR]
$cbr0 attach-agent $udp0
$cbr0 set packetSize_ 1000
$cbr0 set rate_ 0.2Mb
$cbr0 set random_ null
$ns at 30.0 "$cbr0 start"
$ns at 50.0 "$cbr0 stop"


set cbr1 [new Application/Traffic/CBR]
$cbr1 attach-agent $udp2
$cbr1 set packetSize_ 1000
$cbr1 set rate_ 0.2Mb
$cbr1 set random_ null
$ns at 1.0 "$cbr1 start"
$ns at 30.0 "$cbr1 stop"


set cbr2 [new Application/Traffic/CBR]
$cbr2 attach-agent $udp1
$cbr2 set packetSize_ 1000
$cbr2 set rate_ 0.2Mb
$cbr2 set random_ null
$ns at 40.0 "$cbr2 start"
$ns at 80.0 "$cbr2 stop"


proc finish {} {
    global ns tracefile namfile
    $ns flush-trace
    close $tracefile
    close $namfile
    exec nam 192474_IT822_AODV.nam &
    exit 0
}
for {set i 0} {$i < $val(nn) } { incr i } {
    $ns at $val(stop) "\$n$i reset"
}
$ns at $val(stop) "$ns nam-end-wireless $val(stop)"
$ns at $val(stop) "finish"
$ns at $val(stop) "puts \"done\" ; $ns halt"
$ns run
