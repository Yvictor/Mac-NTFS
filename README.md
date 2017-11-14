# Mac-NTFS
Mac ntfs format read-write permission support
## How to use
add the read only external disk to favorite and remember the yourdisk name.</br>
open terminal. (in spotlight enter terminal)</br>
run follow two line.
``` shell
curl -O https://raw.githubusercontent.com/Yvictor/Mac-NTFS/master/Makefile
NTFSDISK=Your-Disk-Name-Here make mount-ntfs
```
go to favorite disk will see the disk your have mount with the custom permission and you can write the file.


### Mac ntfs 無法寫入
## 如何使用
將只能讀取的外接硬碟加入喜好項目</br>
開啟終端機(於spotlight輸入terminal)</br>
執行以下兩行
``` shell
curl -O https://raw.githubusercontent.com/Yvictor/Mac-NTFS/master/Makefile
NTFSDISK=Your-Disk-Name-Here make mount-ntfs
```
回到喜好項目的外接硬碟中即可正常寫入檔案
