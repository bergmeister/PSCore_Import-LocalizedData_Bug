Import-LocalizedData -BindingVariable Messages -Verbose

function Get-Something
{
    $null -eq $Messages.MyVariableName
}