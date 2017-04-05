$favouritenumber = Read-Host -Prompt 'Hello, what is your favourite number?'
Write-Host "Your favourite number is $favouritenumber "
$min = 1
$max = 100
$random = Get-Random -minimum $min -maximum $max
Write-Host "The magic number is between $min and $max"
[bool] $myval = $false

While($myval -eq $false) 
{
	$number = Read-Host -Prompt 'Guess what it is?'
	if ($number -eq $random) { $myval = $true }
	if ($number -lt $random) { Write-Host "Too Low" }
	if ($number -gt $random) { Write-Host "Too High" }
}

