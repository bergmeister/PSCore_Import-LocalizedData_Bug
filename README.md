This is a REPRO example to show that PowerShell Core is handling culture incorrectly when being provided with a languge folder. The problem is most likely in Import-LocalizedData.
The repro is
```powershell
Import-Module .\foo.psd1
 Get-Something
```
By looking at the code, this will return true (i.e. the localised Data was null), whenever the current culture (e.g. `en-us`) does not match the name of the culture folder (`en-GB`). This does not happen in Windows PowerShell where it falls back to using the localised Data when there is no exact match. This exact issue also happens e.g. when switching to British culture `en-GB` and naming the folder `en-us`.
