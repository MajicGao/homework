#### Linux 知识

1. 把用户加入root组

   * 切换到root用户，运行visudo命令
   * 在配置文件中找到root ALL=(ALL) ALL，在下面一行添加 xxx ALL=(ALL) ALL 其中xxx是你要加入的用户名称
   * 保存退出就OK了

2. shadowsocks一键配置包下载与安装

   ```
   git clone -b master https://github.com/flyzy2005/ss-fly
   ```

   ```
   ss-fly/ss-fly.sh -i major123 1024
   ```

   

3. shadowsocks一键包的相关操作

   ```
   修改配置文件：vim /etc/shadowsocks.json
   停止ss服务：ssserver -c /etc/shadowsocks.json -d stop
   启动ss服务：ssserver -c /etc/shadowsocks.json -d start
   重启ss服务：ssserver -c /etc/shadowsocks.json -d restart
   卸载ssr服务:
   ./shadowsocksR.sh uninstall
   ```

   

4. vim 修改只读文件修改完权限不够

   ```
   :w !sudo tee %
   ```

5. 一键开启BBR加速

   ```
   ss-fly/ss-fly.sh -bbr
   ```

   判断是否成功：

   ```
   sysctl net.ipv4.tcp_available_congestion_control
   ```

   返回如下则为成功yum

   ```
   net.ipv4.tcp_available_congestion_control = bbr cubic reno
   ```

6. vm打开虚拟机黑屏处理方法

   > 1、管理员身份运行cmd
   >
   > 2、输入`netsh winsock reset`
   >
   > 3、重启计算机
   >
   > 如果还不行，就在VM->setting->hardware->display的右面的内容栏中将Accelerate 3D graphics取消，然后重启计算机
   
7. Linux 换源

   > Centos 换源
   >
   > 1、进入yum源配置文件  cd /etc/yum.repos.d
   >
   > 2、备份一份当前源，以防出错 mv ./Centos-Base.repo ./Centos-Base-repo.bak
   >
   > 3、下载网易163的源 wget http://mirrors.163.com/.help/CentOS7-Base-163.repo
   >
   > 4、清理一下旧包 yum clean all
   >
   > 5、把下载下来文件 CentOS7-Base-163.repo设置成为默认源 mv CentOS7-Base-163.repo CentOS-Base.repo
   >
   > 6、生成缓存即可用163源了 yum makecache
   >
   > 7、现在我们就可以用163源来安装软件了！ 如下我们安装一个php 
   >
   > yum install php
   >
   > 8、查看一下，可以看到已经安装好了：yum list | grep php

   > Ubuntu 换源
   >
   > 1、备份原来的源：sudo cp /etc/apt/sources.list /etc/apt/sources_init.list
   >
   > 2、

8. Linux软件卸载

   > rpm -qa | grep nginx  #比如这里就是卸载nginx，先查看是否安装有nginx
   >
   > yum erase nginx -y 	#CentOS用yum来卸载软件

