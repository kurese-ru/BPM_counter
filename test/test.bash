#!/bin/bash
# SPDX-FileCopyrightText: 2024 Hiroto Yasuhara
# SPDX-License-Identifier: BSD-3-Clause

ng(){
     echo ${1}行目が違います。
     re=1
}
re=0

direct=~
[ "$1" != "" ] && direct="$1"

cd $direct/ros2_ws
colcon build
source $direct/.bashrc

timeout 10 ros2 launch bpmpkg talk_listen.launch.py > /tmp/bpmcount.log
cat /tmp/bpmcount.log | grep -A 10 "BPM: 65"
cat /tmp/bpmcount.log | grep -A 10 "Beats per second: 1.08"


[ "$re" = 0 ] && echo OK
exit "$re"
