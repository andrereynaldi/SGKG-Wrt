#!/bin/bash
DEVICE="$1"
DTB_DIR="$2"
mkdir -p "$DTB_DIR"

case "$DEVICE" in
  hg680p)
    URL="https://github.com/ophub/amlogic-s9xxx-openwrt/raw/main/amlogic/dtb/amlogic/meson-gxl-s905x-h96-mxq.dtb"
    ;;
  b860h_v1|b860h_v2|b860h_v5)
    URL="https://github.com/ophub/amlogic-s9xxx-openwrt/raw/main/amlogic/dtb/amlogic/meson-gxl-s905d-phicomm-n1.dtb"
    ;;
  opiz3)
    URL="https://github.com/ophub/amlogic-s9xxx-openwrt/raw/main/amlogic/dtb/allwinner/sun50i-h616-orangepi-zero3.dtb"
    ;;
  *)
    echo "No DTB required or unknown device: $DEVICE"
    exit 0
    ;;
esac

wget -O "$DTB_DIR/dtb.img" "$URL"
