# BÀI LÀM – HACKATHON 02

- **Mã đề:** 07
- **Họ tên:** Hà Gia Bách
- **Lớp:** CNTT2
- **Link repository:** https://github.com/BachHa-Pa/HCM_KS26_CNTT02_IT108_Hackathon2.git
- **Hệ điều hành (Windows/macOS):** Windows

## 4.2. Thao tác máy tính cơ bản bằng CLI

### Các lệnh đã chạy

```shell
# Ghi lần lượt các lệnh đã chạy, mỗi lệnh một dòng
 pwd
 ls -force
move-item .\lich_lam_viec.txt .\docs\
   mkdir backup
    copy-item '.\data\hoa_don_spa_thang 7.xlsx' .\backup\
     remove-item "*.tmp"
      cd .\logs\ ; ls ; cd ..



```

### Kết quả liệt kê toàn bộ dự án (Windows: Get-ChildItem -Recurse -Force; macOS: ls -aR)

```text
(Dán kết quả vào đây – xoá dòng này)
  Directory: D:\starter-kit (1)\starter-kit\spa-website


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----        11/11/2026   1:46 PM                backup
d-----        11/11/2026   1:41 PM                data
d-----        11/11/2026   1:45 PM                docs
d-----        11/11/2026   1:38 PM                evidence
d-----        11/11/2026   1:41 PM                logs
d-----        11/11/2026   1:37 PM                web
------         11/3/2026   7:07 AM             75 .env
-a----        11/11/2026   1:45 PM           2496 bai_lam.md


    Directory: D:\starter-kit (1)\starter-kit\spa-website\backup


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----         11/3/2026   7:07 AM           6149 hoa_don_spa_thang 7.xlsx


    Directory: D:\starter-kit (1)\starter-kit\spa-website\data


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----         11/3/2026   7:07 AM           6149 hoa_don_spa_thang 7.xlsx


    Directory: D:\starter-kit (1)\starter-kit\spa-website\docs


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----         11/3/2026   7:07 AM            149 lich_lam_viec.txt


    Directory: D:\starter-kit (1)\starter-kit\spa-website\logs


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----         11/3/2026   7:07 AM            939 service.log


    Directory: D:\starter-kit (1)\starter-kit\spa-website\web


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----         11/3/2026   7:07 AM                images
------         11/3/2026   7:07 AM            597 app.js
------         11/3/2026   7:07 AM            523 index.html
------         11/3/2026   7:07 AM            460 style.css


    Directory: D:\starter-kit (1)\starter-kit\spa-website\web\images


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
------         11/3/2026   7:07 AM           3091 logo-lotuscare.png

```

## 4.3. Lọc log truy cập website

### a) Lệnh lọc các dòng status=500

```shell
# Ghi lệnh vào đây (xoá dòng này)
 select-string "status=500" .\logs\service.log > .\logs\loi_500.txt
 get-content .\logs\loi_500.txt -head 3

```

### 2 dòng đầu tiên trong logs/loi_500.txt

```text
(Dán kết quả vào đây – xoá dòng này)
logs\service.log:4:2026-07-28 08:12:50 POST /api/dat-lich status=500
logs\service.log:7:2026-07-28 08:19:23 POST /api/dat-lich status=500

 

```

### b) Lệnh đếm số dòng status=404 và kết quả

```shell
# Ghi lệnh vào đây (xoá dòng này)
select-string "status=404" .\logs\service.log | measure-object

```

```text
(Dán kết quả đếm vào đây – xoá dòng này)
Count    : 4
Average  :
Sum      :
Maximum  :
Minimum  :
Property :

```

## 4.4. Chạy script tong_hop (.ps1 hoặc .sh)

### Lệnh chạy (Windows: nếu dùng Phụ lục 2 thì ghi cả 2 lệnh)

```shell
# Ghi lệnh vào đây (xoá dòng này)
Set-ExecutionPolicy -Scope Progress -ExecutionPolicy Bypass
.\tong_hop.ps1

# Script: tong_hop.ps1
# Tác Giả: Hà Gia Bách
# Ngày: 11/11/2026
Write-Host "Dang tai bao cao..."
"=== BAO CAO SU CO WEBSITE ===" > logs/tong_hop.txt
Get-content logs/service.log | select-string "status=500" >>  logs/tong_hop.txt
Get-content logs/service.log | select-string "status=404" | Measure-object  >>  logs/tong_hop.txt
Write-Host "HOAN THANH !"



```

### Nội dung file logs/tong_hop.txt

```text
(Dán nội dung file vào đây – xoá dòng này)
=== BAO CAO SU CO WEBSITE ===

2026-07-28 08:12:50 POST /api/dat-lich status=500
2026-07-28 08:19:23 POST /api/dat-lich status=500
2026-07-28 08:31:56 POST /api/lich-trong status=500
2026-07-28 08:55:13 POST /api/dat-lich status=500
2026-07-28 08:59:24 POST /api/lich-trong status=500
2026-07-28 09:02:35 POST /api/thanh-toan status=500




Count    : 4
Average  : 
Sum      : 
Maximum  : 
Minimum  : 
Property : 





```

## 4.5. README.md và bảo vệ thông tin bí mật

> README.md, .gitignore và .env.example được chấm trực tiếp trên file ở gốc dự án. Đánh dấu `[x]` vào các mục đã làm để tự kiểm tra.

- [ ] README.md: Heading 1, mô tả có **in đậm** và *in nghiêng*, bảng, code block, task list, blockquote
- [ ] .gitignore có dòng `.env` (tên file đúng, không có đuôi .txt)
- [ ] .env.example có đủ tên biến, giá trị để trống (tên file đúng, không có đuôi .txt)

## 4.6. Kiểm tra trang web bằng DevTools (F12) và báo cáo lỗi

### Bảng lỗi

| STT | Tab DevTools phát hiện lỗi | Tên file hoặc thông báo lỗi | Cách khắc phục |
| --- | --- | --- | --- |
| 1 | network | images/logo.png | sửa lại thành logo-lotuscare.png |
| 2 | console | app.js:18 Uncaught ReferenceError: hienThiGoiDichVu is not defined | sửa lại tên hienThiGoiDichVu |

> Ảnh chụp màn hình lưu trong thư mục `evidence/` (network.png, console.png).

### Báo cáo lỗi gửi trưởng nhóm

- **Context:** windows, app.js,index.html
- **Expected:** tải được logo và hiển thị bảng đầy đủ
- **Actual:** lỗi ảnh logo và bảng không đầy đủ
- **Log:** app.js:18 Uncaught ReferenceError: hienThiGoiDichVu is not defined;images/logo.png

### Câu tìm kiếm Google

```text
(Ghi câu tìm kiếm vào đây – xoá dòng này)
site:stackoverflow.com "app.js:18 Uncaught ReferenceError: hienThiGoiDichVu is not defined"

```

## 4.7. Excel

> Phần Excel được chấm trực tiếp trên file `data/hoa_don_spa_thang_7.xlsx`, không cần ghi vào đây.
