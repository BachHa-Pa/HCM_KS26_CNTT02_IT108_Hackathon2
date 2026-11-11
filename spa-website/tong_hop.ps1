# Script: tong_hop.ps1
# Tác Giả: Hà Gia Bách
# Ngày: 11/11/2026
Write-Host "Dang tai bao cao..."
"=== BAO CAO SU CO WEBSITE ===" > logs/tong_hop.txt
Get-content logs/service.log | select-string "status=500" >>  logs/tong_hop.txt
Get-content logs/service.log | select-string "status=404" | Measure-object  >>  logs/tong_hop.txt
Write-Host "HOAN THANH !"
