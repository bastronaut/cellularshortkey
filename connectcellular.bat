rem netsh mbn connect interface="Mobile Broadband Connection" connmode
netsh wlan disconnect
netsh mbn connect interface="Cellular" connmode=tmp name=profile.xml