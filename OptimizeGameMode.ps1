# ALTERAR AQUI, APPS PARA FECHAR
$apps = @("chrome", "code", "qemu-system-x86_64", "adb", "parsec", "studio64", "Postman", "java", "javaw", "docker", "GitHubDesktop")

foreach ($app in $apps) {
    Stop-Process -Name $app -Force -ErrorAction SilentlyContinue
}

# LIXEIRO RAM
foreach ($p in Get-Process) {
    try { $p.MinWorkingSet = [IntPtr]-1 } catch {}
}

[System.GC]::Collect()
[System.GC]::WaitForPendingFinalizers()