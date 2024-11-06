#!/bin/bash

# Jalankan glances di dalam sesi screen bernama "glances_session"
screen -dmS glances_session bash -c 'glances; exec bash'

# Jalankan server Java di dalam sesi screen bernama "java_session"
screen -dmS java_session bash -c 'java -Xmx12288M -Xms12288M -jar server.jar nogui; exec bash'

# Jalankan ngrok di dalam sesi screen bernama "ngrok_session"
screen -dmS ngrok_session bash -c 'ngrok start --config ~/.config/ngrok/ngrok.yml --all; exec bash'
