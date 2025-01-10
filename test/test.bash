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

cd "$direct/ros2_ws" || {
    error_msg "ディレクトリ $direct/ros2_ws が見つかりません"
    exit "$re"
}
colcon build
source "$direct/.bashrc"

timeout 10 ros2 launch bpmpkg talk_listen.launch.py > /tmp/bpmcount.log
grep -A 10 "BPM: 65" /tmp/bpmcount.log || {
    error_msg "BPM: 65 がログに見つかりません"
    exit "$re"
}
grep -A 10 "Beats per second: 1.08" /tmp/bpmcount.log || {
    error_msg "Beats per second: 1.08 がログに見つかりません"
    exit "$re"
}


[ "$re" = 0 ] && echo OK
exit "$re"
