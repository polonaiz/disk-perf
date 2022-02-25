#!/bin/bash
echo started;
set -x

COUNT=5

VOL_TYPE="empty-dir"
OUT_FILE="/mnt/${VOL_TYPE}/test_${VOL_TYPE}_file"
rm -f ${OUT_FILE}
dd if=/dev/zero bs=250M count=${COUNT} of=${OUT_FILE}
echo ""

VOL_TYPE="empty-dir-mem"
OUT_FILE="/mnt/${VOL_TYPE}/test_${VOL_TYPE}_file"
rm -f ${OUT_FILE}
dd if=/dev/zero bs=250M count=${COUNT} of=${OUT_FILE}
echo ""

VOL_TYPE="host-path-dir-ssd"
OUT_FILE="/mnt/${VOL_TYPE}/test_${VOL_TYPE}_file"
rm -f ${OUT_FILE}
dd if=/dev/zero bs=250M count=${COUNT} of=${OUT_FILE}
echo ""

VOL_TYPE="host-path-dir-nvme"
OUT_FILE="/mnt/${VOL_TYPE}/test_${VOL_TYPE}_file"
rm -f ${OUT_FILE}
dd if=/dev/zero bs=250M count=${COUNT} of=${OUT_FILE}
echo ""

echo terminated;
sleep 10000;
