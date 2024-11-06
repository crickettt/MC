let startTime;
let intervalId;

// Fungsi untuk memulai stopwatch
function startStopwatch() {
    startTime = Date.now();
    console.log("Stopwatch started. Press Ctrl+C to stop.");
    intervalId = setInterval(updateTime, 1000); // Update setiap detik
}

// Fungsi untuk memperbarui waktu yang berlalu
function updateTime() {
    const elapsedTime = Math.floor((Date.now() - startTime) / 1000);
    console.clear(); // Menghapus konsol untuk menghindari spam
    console.log(`Elapsed Time: ${elapsedTime} seconds`);
}

// Fungsi untuk menghentikan stopwatch
function stopStopwatch() {
    clearInterval(intervalId);
    console.log("Stopwatch stopped.");
}

// Fungsi untuk menjaga agar Codespace tetap aktif
function keepAlive() {
    setInterval(() => {
        fetch(window.location.href).catch(err => console.log('Keep-alive failed:', err));
    }, 300000); // 300000 ms = 5 menit
}

// Memulai stopwatch dan keep-alive
startStopwatch();
keepAlive();