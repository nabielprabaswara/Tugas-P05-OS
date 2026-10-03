#!/bin/bash

show_menu() {
    echo "======================================"
    echo "    PROTOTIPE PENGELOLAAN PROSES      "
    echo "======================================"
    echo "1. Tampilkan Proses Aktif (Filter Nama)"
    echo "2. Jalankan Worker di Background"
    echo "3. Cek Status Jobs Terminal"
    echo "4. Ubah Prioritas Proses (Renice)"
    echo "5. Hentikan Proses Terkontrol (SIGTERM)"
    echo "6. Hentikan Proses Paksa (SIGKILL)"
    echo "7. Keluar"
    echo "======================================"
    read -p "Pilih menu [1-7]: " pilihan
}

while true; do
    show_menu
    case $pilihan in
        1)
            read -p "Masukkan kata kunci proses (misal: dummy): " nama
            ps -eo pid,ppid,user,ni,stat,cmd | grep "$nama" | grep -v grep
            ;;
        2)
            ./src/dummy_worker.sh > /dev/null 2>&1 &
            echo "Worker dijalankan di background dengan PID: $!"
            ;;
        3)
            jobs -l
            ;;
        4)
            read -p "Masukkan PID: " target_pid
            read -p "Masukkan Nice Value baru (-20 s/d 19): " nice_val
            renice -n "\(nice_val" -p "\)target_pid"
            ;;
        5)
            read -p "Masukkan PID yang ingin dihentikan normal: " target_pid
            kill -15 "\(target_pid" && echo "Signal SIGTERM (15) terkirim ke\)target_pid"
            ;;
        6)
            read -p "Masukkan PID yang ingin dihentikan paksa: " target_pid
            kill -9 "\(target_pid" && echo "Signal SIGKILL (9) terkirim ke\)target_pid"
            ;;
        7)
            echo "Keluar dari program."
            exit 0
            ;;
        *)
            echo "Pilihan tidak valid!"
            ;;
    esac
    echo ""
    read -p "Tekan Enter untuk melanjutkan..."
done
