# 创建新仓库的方法
…or create a new repository on the command line
```
echo "# Shell" >> README.md
git init
git add README.md
git commit -m "first commit"
git remote add origin git@github.com:DingDangMao11/Shell.git
git push -u origin master
```
…or push an existing repository from the command line
```
git remote add origin git@github.com:DingDangMao11/Shell.git
git push -u origin master
```
…or import code from another repository

You can initialize this repository with code from a Subversion, Mercurial, or TFS project.
# Markdown语法 

https://testerhome.com/markdown
# Shell


# Shell 传递参数

我们可以在执行 Shell 脚本时，向脚本传递参数，脚本内获取参数的格式为：$n。n 代表一个数字，1 为执行脚本的第一个参数，2 为执行脚本的第二个参数，以此类推……

  参数处理 	  说明
1. $# 	    传递到脚本的参数个数
2. $* 	    以一个单字符串显示所有向脚本传递的参数。
            如"$*"用「"」括起来的情况、以"$1 $2 … $n"的形式输出所有参数。
3. $$ 	    脚本运行的当前进程ID号
4. $! 	    后台运行的最后一个进程的ID号
5. $@ 	    与$*相同，但是使用时加引号，并在引号中返回每个参数。
            如"$@"用「"」括起来的情况、以"$1" "$2" … "$n" 的形式输出所有参数。
6. $- 	    显示Shell使用的当前选项，与set命令功能相同。
7. $? 	    显示最后命令的退出状态。0表示没有错误，其他任何值表明有错误。
8. $0       为执行的文件名
