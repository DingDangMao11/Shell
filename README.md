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

# sed替换指定文字
sed命令配合正则表达式可以替换指定文本,基本的script格式为:
sed 's/要被取代的字串/新的字串/g'

#  shell 中 [-eq] [-ne] [-gt] [-lt] [ge] [le]


-eq  //等于
-ne  //不等于
-gt  //大于
-lt  //小于
ge   //大于等于
le  //小于等于
# shell 中三种引号的用法及区别
Linux Shell中有三种引号，分别为双引号（" "）、单引号(' ')以及反引号(` `)。

# 1.双引号对字符串中出现的$、''、`和\进行替换；
    双引号（" "）：在双引号中，除了$, '', `和\以外所有的字符都解释成字符本身。
# 2.单引号不进行替换，将字符串中所有字符作为普通字符输出
    单引号（' '）：在单引号中所有的字符包括特殊字符（$,'',`和\）都将解释成字符本身而成为普通字符。
# 3.而反引号中字符串作为shell命令执行，并返回执行结果。具体含义如下：
    反引号（` `）：在反引号中的字符串将解释成shell命令来执行。
    
    
    

