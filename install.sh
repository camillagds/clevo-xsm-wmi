#/bin/bash
cd module
make clean
make 
make install
install -m644 clevo-xsm-wmi.ko /lib/modules/$(uname -r)/extra
depmod
#tee /etc/modules-load.d/clevo-xsm-wmi.conf <<< clevo-xsm-wmi
modprobe clevo-xsm-wmi
dmesg | grep clevo
modinfo clevo-xsm-wmi
