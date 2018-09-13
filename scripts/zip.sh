#!/usr/bin/env bash
if [ -z $1 ] || [ -z $2 ]
then
	printf "\nUsage: \n\n\tbash zip.sh version release_type\n\n"
	exit 1
fi

KDIR=$PWD
AK2DIR=~/AnyKernel2
DATE=$(date +"%m%d%y")
KNAME="OrgasmKernel"
export DEVICE="perry"
export KBUILD_BUILD_USER="RblLn"
export KBUILD_BUILD_HOST="PleasureBox"
VER="-v$1"
TYPE="_$2"
export FINAL_ZIP="$KNAME"-"$DEVICE""$TYPE""$VER"_"$DATE".zip

if [ -e $AK2DIR/zImage ]
then
	rm $AK2DIR/*.dtb
        rm $AK2DIR/zImage
        rm -r $AK2DIR/modules/*
        mkdir -p $AK2DIR/modules/system/lib/modules
        touch $AK2DIR/modules/system/lib/modules/placeh
older
fi

echo "==> Making Flashable zip"

echo "=> Finding modules"

rsync -aP --include '*.ko' --exclude '*' out/modinstall/ $AK2DIR/modules/
mkdir -p "$AK2DIR/modules/system/lib/modules/pronto"
mv "$AK2DIR/modules/system/lib/modules/wlan.ko" "$AK2DIR/modules/system/lib/modules/pronto/pronto_wlan.ko"

cp  $KDIR/out/arch/arm/boot/zImage $AK2DIR
cp  $KDIR/out/arch/arm/boot/dts/qcom/*.dtb $AK2DIR

cd $AK2DIR

if [ -e $AK2DIR/*.zip ]
then
	rm *.zip
fi

zip -r9 $FINAL_ZIP * -x .git README.md *placeholder > /dev/null

if [ -e $FINAL_ZIP ]
then
	echo "==> Flashable zip Created"
	echo "==> Flashable zip is stored in $AK2DIR folder with name $FINAL_ZIP"
	exit 0
else
	echo "!!! Failed to make zip. Abort !!!"
	exit 1
fi

