#LOG FILE TRACKER FOR APP
sudo mkdir -p /var/log/app/{January/{01..31},February/{01..28},March/{01..31}}
sudo touch -p /var/log/app/{January/{01..31}/log.daily,February/{01..28}/log.daily,March/{01..31}/log.daily}
tree .