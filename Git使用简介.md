##Git使用简介

####Git Commands

```git
1、git init	//初始化本地git仓库
2、git add<file>	//添加文件
3、git status	//查看状态
4、git commit	//提交
5、git push	//推送到仓库
6、git pull	//从远程仓库拉取数据
7、git clone	//从远程仓库拷贝数据
```



#### 安装Git

Windows安装连接：http://git-scm.com/download/win



#### 使用Git

1. 在你想要建立仓库的文件夹下初始一个空Git仓库

   > ```
   > git init
   > ```

2. 对初始化的仓库进行配置用户名和email

   > ```
   > git config --global user.name 'Mr.M'
   > 
   > git config --global user.email '1039932706@qq.com
   > ```

3. 添加文件夹中的文进入Git仓库

   > ```
   > git add <file>
   > 
   > git add .	//用.来代表上传所有文件
   > 
   > git add *.md	//用*来代表上传某一类文件
   > ```

4. 查看仓库状态

   > ```
   > git status
   > 
   > //git 不会识别空文件夹
   > ```
   
5. 从Git中删除add添加的文件

   > ```
   > git rm --cached <file>
   > ```

6. 当文件夹中的文件修改后，上传前都要用用`git status`Git仓库状态，会出现提示` modified: `，表示文件被修改，需要重新添加

7. 将添加的文件进行提交

   > ```
   > git commit	//执行这个命令后，需要对本次提交写说明
   > 
   > //也可以一步到位提交时直接把说明写上
   > git commit -m 'change <file>'	//' '中的内容为说明
   > ```

8. 使用git忽略文件夹中不想上传的文件

   > 1、在当前文件夹中创建一个名为`.gitignore`文件
   >
   > ```
   > touch .gitignore
   > ```
   >
   > 2、把需要忽略的文件或文件夹的路径添加到`.gitignore`文件中
   >
   > ```
   > <file>	//忽略文件时，会忽略文件树下的所有同名文件
   > 
   > /<dir>	//忽略文件夹时则不会
   > ```

9. 分支的使用

   > 1、创建分支
   >
   > ```
   > git branch <分支名>
   > ```
   >
   > 2、切换分支
   >
   > ``` 
   > git checkout <分支名>
   > ```
   >
   > 3、在分支中进行操作
   >
   > 4、提交分支中的操作
   >
   > 5、切换到master中，会发现分支的操作对主线没有影响

10. 主线与分支的合并

    > 1、切换到master中
    >
    > ```
    > git checkout master
    > ```
    >
    > 2、将指定分支合并到主线中
    >
    > ```
    > git merge <分支名>
    > ```

11. 操作远程仓库

    > 1、首先查看一下这个本地仓库是否有对应的远程仓库
    >
    > ```
    > git remote
    > ```
    >
    > 2、添加远程仓库的对接
    >
    > ```
    > git remote add origin <远程仓库地址>
    > ```
    >
    > 3、检测是否与远程仓库连接上
    >
    > ```
    > git remote
    > //结果为origin 连接上了
    > ```
    >
    > 4、将本地的仓库推送 到远程仓库中
    >
    > ```
    > git push -u origin master
    > ```
    >
    > 5、如果出现Permission denied(publickey)，解决办法
    >
    > > 1) 删除原来的origin
    > >
    > > ```
    > > git remote rm origin
    > > ```
    > >
    > > 2)重新建立连接
    > >
    > > ```
    > > git remote add origin  https://github.com/xxx/xxxxx.git
    > > //第一个XXX代表你的用户名，第二个XXX代表你push到github上的版本库名称
    > > 
    > > //执行这句命名时，会弹出登陆GitHub的窗口，登陆即可
    > > ```
    > >
    > > 3)重新推送到远程仓库
    > >
    > > ```
    > > git push -u origin master
    > > ```

