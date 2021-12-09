#part 1
$diag = Get-Content .\input3.txt
$gr = $null
$er = $null
foreach ($bit in 0..($diag[0].Length -1)) {
    $gr += ( $diag | Group-Object -Property { $_.substring($bit,1) } | Sort-Object -Property 'Count' -Descending -Top 1 ).Name
    $er += ( $diag | Group-Object -Property { $_.substring($bit,1) } | Sort-Object -Property 'Count' -Top 1 ).Name
}
$grint = [convert]::ToInt32($gr,2)
$erint = [convert]::ToInt32($er,2)
$grint * $erint



#part 2
$diag = Get-Content .\input3.txt
$ogr = $null
foreach ($bit in 0..($diag[0].Length -1)) {
    $diag = ( $diag | Group-Object -Property { $_.substring($bit,1) } | Sort-Object -Property 'Count','Name' -Descending -Top 1 ).Group
    if ($diag.count -eq 1) { break }
}
$ogr = $diag

$diag = Get-Content .\input3.txt
$csr = $null
foreach ($bit in 0..($diag[0].Length -1)) {
    $diag = ( $diag | Group-Object -Property { $_.substring($bit,1) } | Sort-Object -Property 'Count','Name' -Top 1 ).Group
    if ($diag.count -eq 1) { break }
}
$csr = $diag

$ogrint = [convert]::ToInt32($ogr,2)
$csrint = [convert]::ToInt32($csr,2)
$ogrint * $csrint
