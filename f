#!/bin/bash

# Inisialisasi variabel
SECONDS=0

# Loop selamanya
while true; do
    # Hitung waktu dalam menit
    minutes=$((SECONDS / 60))
    
    # Cek jika sudah 5 menit
    if (( minutes % 5 == 0 && minutes > 0 )); then
        echo "Elapsed time: $minutes minutes"
    fi
    
    # Tunggu selama 1 detik
    sleep 1
done
