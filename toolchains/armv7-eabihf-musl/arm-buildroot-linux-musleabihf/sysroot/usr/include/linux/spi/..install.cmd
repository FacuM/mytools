cmd_/opt/armv7-eabihf--musl--stable-2018.02-2/arm-buildroot-linux-musleabihf/sysroot/usr/include/linux/spi/.install := /bin/bash scripts/headers_install.sh /opt/armv7-eabihf--musl--stable-2018.02-2/arm-buildroot-linux-musleabihf/sysroot/usr/include/linux/spi ./include/uapi/linux/spi spidev.h; /bin/bash scripts/headers_install.sh /opt/armv7-eabihf--musl--stable-2018.02-2/arm-buildroot-linux-musleabihf/sysroot/usr/include/linux/spi ./include/linux/spi ; /bin/bash scripts/headers_install.sh /opt/armv7-eabihf--musl--stable-2018.02-2/arm-buildroot-linux-musleabihf/sysroot/usr/include/linux/spi ./include/generated/uapi/linux/spi ; for F in ; do echo "\#include <asm-generic/$$F>" > /opt/armv7-eabihf--musl--stable-2018.02-2/arm-buildroot-linux-musleabihf/sysroot/usr/include/linux/spi/$$F; done; touch /opt/armv7-eabihf--musl--stable-2018.02-2/arm-buildroot-linux-musleabihf/sysroot/usr/include/linux/spi/.install