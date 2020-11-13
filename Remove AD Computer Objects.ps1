#Step 1: Update Comps file with AD computer objects that are to be deprovisioned
#Step 2: Run command below in PowerShell
#Note: Line 4 retrieves hosts from Comps File in C:\Burwood Powershell Outputs 
ForEach ($system in (Get-Content "C:\Burwood Powershell Outputs\comps.txt")) {
#Note: Line 6 removes the AD computer objects specified in the comps file
Get-ADComputer $system|Remove-ADComputer -Confirm:$false}