$path = Get-Content .\input2.txt

#part 1
$hor = 0
$depth = 0
foreach ($p in $path) {
    $q = $p.split(' ')
    switch ( $q[0] ) {
        forward { $hor += $q[1] }
        down { $depth += $q[1] }
        up { $depth -= $q[1]  }
    }
}
$hor * $depth

#part 2
$hor = 0
$depth = 0
$aim = 0
foreach ($p in $path) {
    $q = $p.split(' ')
    switch ( $q[0] ) {
        forward { $hor += $q[1] ; $depth += ($aim * $q[1])}
        down { $aim += $q[1] }
        up { $aim -= $q[1] }
    }
}
$hor * $depth
