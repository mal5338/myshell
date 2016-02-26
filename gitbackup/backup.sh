#!/bin/sh
# 获取当前日期
work_day=`date +%Y%m%d`

# 切换到工作目录
cd /home/git/repobak/workdir

# 清空工作目录
rm -rf *

# 压缩仓库到指定位置
tar -cvf /home/git/repobak/workdir/repositories-$work_day.tar /home/git/repositories