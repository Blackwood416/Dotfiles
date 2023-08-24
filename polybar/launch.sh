pkill polybar
polybar bar 2>&1 | tee -a /tmp/polybar.log & disown
