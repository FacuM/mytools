cmd_/opt/armv7-eabihf--musl--stable-2018.02-2/arm-buildroot-linux-musleabihf/sysroot/usr/include/linux/hdlc/.install := /bin/bash scripts/headers_install.sh /opt/armv7-eabihf--musl--stable-2018.02-2/arm-buildroot-linux-musleabihf/sysroot/usr/include/linux/hdlc ./include/uapi/linux/hdlc ioctl.h; /bin/bash scripts/headers_install.sh /opt/armv7-eabihf--musl--stable-2018.02-2/arm-buildroot-linux-musleabihf/sysroot/usr/include/linux/hdlc ./include/linux/hdlc ; /bin/bash scripts/headers_install.sh /opt/armv7-eabihf--musl--stable-2018.02-2/arm-buildroot-linux-musleabihf/sysroot/usr/include/linux/hdlc ./include/generated/uapi/linux/hdlc ; for F in ; do echo "\#include <asm-generic/$$F>" > /opt/armv7-eabihf--musl--stable-2018.02-2/arm-buildroot-linux-musleabihf/sysroot/usr/include/linux/hdlc/$$F; done; touch /opt/armv7-eabihf--musl--stable-2018.02-2/arm-buildroot-linux-musleabihf/sysroot/usr/include/linux/hdlc/.install