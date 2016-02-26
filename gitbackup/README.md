## 备份使用说明

### Git服务器端

#### 准备脚本

将`backup.sh`复制到Git服务器（Linux）中，修改代码中的相关目录。

```
#!/bin/sh
# 获取当前日期
work_day=`date +%Y%m%d`

# 切换到工作目录
cd /home/git/repobak/workdir

# 清空工作目录
rm -rf *

# 压缩仓库到指定位置
tar -cvf /home/git/repobak/workdir/repositories-$work_day.tar /home/git/repositories
```

#### 配置定时任务

运行下面命令编辑定时任务

```
crontab -e
```

在新界面中编写任务规则,如下（每月的1、11、21号22：00执行）

```
00 22 1,11,21 * * /home/git/repobak/backup.sh
```

### Windows客户端

#### 准备脚本

将`backup-win.bat` 和 `option-win.txt` 复制到windows指定目录，并修改代码中的路径

backup-win.bat——主执行程序

```
ftp -s:D:\GITBACKUP\script\option-win.txt
```

option-win.txt——操作内容

```
open git.xahtss.com
git
git
cd /home/git/repobak/workdir
lcd D:\GITBACKUP
prompt off
mget *
bye
```

#### 计划任务配置
进入windows的计划任务增加相应的执行时间和执行程序。

