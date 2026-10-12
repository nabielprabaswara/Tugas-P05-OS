echo "skenario pengujian"
echo ""

echo "menjalankan worker"
./src/dummy_worker.sh > /dev/null 2>&1 &
PID_TEST=$!
sleep 1
echo "worker aktif di PID: $PID_TEST"

echo "cek status proses"
ps -eo pid,ni,stat,cmd | grep "$PID_TEST" | grep -v grep

echo "mengubah nice value"
renice -n 5 -p "$PID_TEST"

echo "uji permission error"
renice -n -5 -p "$PID_TEST"

echo "uji PID palsu"
kill -15 77777

echo "mematikan worker"
kill -15 "$PID_TEST"

echo "pengujian selesai"
