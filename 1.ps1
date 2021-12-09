#https://adventofcode.com/2021/day/1

#part 1
$depth = Get-Content .\input1.txt
$a = 0
for ($i = 0; $i -le $depth.Count ; $i++) {
    if ($depth[$i] -gt $depth[$i-1]) {$a++}
}
$a

#part 2
$a = 0
for ($i = 3; $i -le $depth.Count ; $i++) {
    $sum1 = $depth[$i-1] + $depth[$i-2] + $depth[$i-3]
    $sum2 = $depth[$i] + $depth[$i-1] + $depth[$i-2]
    if ($sum2 -gt $sum1 ) {$a++}
}
$a