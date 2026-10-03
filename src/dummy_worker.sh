#!/bin/bash
# Script simulasi beban kerja ringan
echo "Worker dimulai dengan PID: $$"

# Loop berjalan selama durasi tertentu (misal: 600 detik / 10 menit)
counter=1
while [ $counter -le 600 ]; do
    echo "[\((date +'%H:%M:%S')] Dummy worker berjalan (detik ke-\)counter)..."
    sleep 2
    ((counter+=2))
done

echo "Worker selesai secara normal."
