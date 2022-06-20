function A{
    Param($functionToCall)
    Write-Host "Calling function: $functionToCall"

    # Obtain the scripts from the externally parsed function
    $script=(Get-Item "function:$functionToCall").ScriptBlock

    # invoking external function
    [ScriptBlock]::Create($script).Invoke();

}

function B{
    Write-Host "Function B has been invoked"
}

A -functionToCall B
#to testh tee