# dokumen test case p05

|ID |Tujuan |Tindakan |Status |
|---|---|---|---| TC01 |Identifikasi Proses | ps -eo pid,ni,stat,cmd | SUCCESS |
| TC02 | Background Process | ./src/dummy_worker.sh & | SUCCESS |
| TC03 | Perubahan Priority | renice -n 5 -p PID | SUCCES |
| TC04 | Signal Terkontrol | kill -15 PID | SUCCESS |
| TC05 | Permission Error | renice -n -5 -p PID | SUCCESS |
| TC06 | PID tidak ada | kill -15 77777 | SUCCESS |
