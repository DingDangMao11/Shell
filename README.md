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
#关系运算符

##关系运算符只支持数字，不支持字符串，除非字符串的值是数字。

   
# 运算符        说明	
  
-eq            检测两个数是否相等，相等返回 true。[ $a -eq $b ] 返回 false。

-ne            检测两个数是否不相等，不相等返回 true。[ $a -ne $b ] 返回 true。

-gt             检测左边的数是否大于右边的，如果是，则返回 true。[ $a -gt $b ] 返回 false。

-lt           检测左边的数是否小于右边的，如果是，则返回 true。[ $a -lt $b ] 返回 true。

-ge           检测左边的数是否大于等于右边的，如果是，则返回 true。[ $a -ge $b ] 返回 false。

-le           检测左边的数是否小于等于右边的，如果是，则返回 true。[ $a -le $b ] 返回 true。
    
 #  文件测试运算符
 ## 文件测试运算符用于检测 Unix 文件的各种属性。
     
     属性检测描述如下：

操作符	   说明	      
-b file	 检测文件是否是块设备文件，如果是，则返回 true。	[ -b $file ] 返回 false。

-c file	检测文件是否是字符设备文件，如果是，则返回 true。	[ -c $file ] 返回 false。

-d file	检测文件是否是目录，如果是，则返回 true。	[ -d $file ] 返回 false。

-f file	检测文件是否是普通文件（既不是目录，也不是设备文件），如果是，则返回 true。	[ -f $file ] 返回 true。

-g file	检测文件是否设置了 SGID 位，如果是，则返回 true。	[ -g $file ] 返回 false。

-k file	检测文件是否设置了粘着位(Sticky Bit)，如果是，则返回 true。	[ -k $file ] 返回 false。

-p file	检测文件是否是有名管道，如果是，则返回 true。	[ -p $file ] 返回 false。

-u file	检测文件是否设置了 SUID 位，如果是，则返回 true。	[ -u $file ] 返回 false。

-r file	检测文件是否可读，如果是，则返回 true。	[ -r $file ] 返回 true。

-w file	检测文件是否可写，如果是，则返回 true。	[ -w $file ] 返回 true。

-x file	检测文件是否可执行，如果是，则返回 true。	[ -x $file ] 返回 true。

-s file	检测文件是否为空（文件大小是否大于0），不为空返回 true。	[ -s $file ] 返回 true。

-e file	检测文件（包括目录）是否存在，如果是，则返回 true。	[ -e $file ] 返回 true。

#  字符串运算符
下表列出了常用的字符串运算符，假定变量 a 为 "abc"，变量 b 为 "efg"：

运算符	说明	举例
##    =	            检测两个字符串是否相等，相等返回 true。	[ $a = $b ] 返回 false。
##   !=	            检测两个字符串是否相等，不相等返回 true。	[ $a != $b ] 返回 true。
##   -z	            检测字符串长度是否为0，为0返回 true。	[ -z $a ] 返回 false。
##   -n	             检测字符串长度是否为0，不为0返回 true。	[ -n "$a" ] 返回 true。
##   str	          检测字符串是否为空，不为空返回 true。	[ $a ] 返回 true。

# shell之find命令详解
# find命令原理：从指定的起始目录开始，递归地搜索其各个子目录，查找满足寻找条件的文件，并可以对其进行相关的操作。

#格式：find [查找目录] [参数] [匹配模型]  
#多参数格式：find [查找目录] [参数] [匹配模型] [参数] [匹配模型]  

例如：
## 1、find . -name "*.sh"           
查找在当前目录（及子目录）下找以sh结尾的文件。
## 2、find . -perm 755               
查找在当前目录（及子目录）下找属性为755的文件。
## 3、find -user root                  
查找在当前目录（及子目录）下找属主为root的文件。
## 4、find /var -mtime -5           
查找在/var下找更改时间在5天以内的文件。
## 5、find /var -mtime +3          
查找在/var下找更改时间在3天以前的文件。
## 6、find /etc -type l                
查找在/etc下查找文件类型为|的链接文件。
## 7、find . -size +1000000c    
查找在当前目录（及子目录）下查找文件大小大于1M的文件，1M是1000000个字节。
## 8、find . -perm 700 |xargs chmod 777         
查找出当前目录（及子目录）下所有权限为700的文件，并把其权限重设为777。
## 9、find . -type f |xargs ls -l                         
查找出文件并查看其详细信息。


Linux系统中有着成千上万的文件，如果你想要找到自己想要的文件，一款查找软件是必不可少的，而locate是根据其生成的数据库进行查找，虽然速度会略快，但非实时查找，有些新的文件或目录是匹配不到的，而且locate是模糊匹配，而find命令为实时查找，且为精确匹配，如果你对目录的权限够大，想查什么就查什么！

#  find命令的语法格式：

    ##find  [查找路径] [查找条件] [处理动作]

## [root@localhost test]# find -type f -ls // 如果不指定查找路径，则在当前路径查找
461307    4 -rwxrwxrwx   1 root     root           25 Aug 15 21:41 ./f3
461333    0 -rwxr--r--   1 root     root            0 Aug 15 16:46 ./f1
  1700    4 -rw---x--x   1 root     root            6 Aug 15 17:50 ./f2
461335    4 -rw-r--r--   1 root     root           23 Aug 15 17:49 ./f1.gz
## 1）根据文件名和inode查找：

        -name "文件名称"：支持使用glob
            *, ?, [], [^]

## [root@localhost test]# find /root -name f3 //查找/root目录下 文件名为f3
/root/f3
/root/test/f3
## [root@localhost test]# find /root -name f? //查找时候最后使用“”将文件名引起，不然可能会出问题
find: paths must precede expression: f2
Usage: find [-H] [-L] [-P] [-Olevel] [-D help|tree|search|stat|rates|opt|exec] [path...] [expression]
## [root@localhost test]# find /root -name "f?" //加上引号后可以查找出来，？代表任意单个字符
/root/f3
/root/test/f3
/root/test/f1
/root/test/f2
/root/f1
/root/vmware-tools-distrib/etc/messages/fr
/root/Desktop/f1
/root/Desktop/f2
/root/etc2016-08-11/vmware-tools/messages/fr
/root/etc2016-08-11/etc/vmware-tools/messages/fr
## 2）根据属主和属组查找

        -user USERNAME：查找属主为指定用户(UID)的文件
        -group GRPNAME: 查找属组为指定组(GID)的文件
        -uidUserID：查找属主为指定的UID号的文件
        -gidGroupID：查找属组为指定的GID号的文件
        -nouser：查找没有属主的文件
        -nogroup：查找没有属组的文件

## [root@localhost test]# find /var/ -user xiaoshui //查找/var/目录下属主为xiaoshui的文件或目录
/var/spool/mail/xiaoshui
## [root@localhost test]# find /tmp -group xiaoshui
## [root@localhost test]# find /var -nouser -ls //查找/var/目录下没有属主的文件的或目录
67109563    0 -rw-rw----   1 1002     mail            0 Jul 27 15:46 /var/spool/mail/shui
67109834    0 -rw-rw----   1 1005     mail            0 Jul 30 15:54 /var/spool/mail/user1
67109549    0 -rw-rw----   1 1006     mail            0 Aug  1 15:46 /var/spool/mail/gentoo
67401595    4 -rw-rw----   1 4330     mail          646 Aug 16 09:19 /var/spool/mail/12
## 3）根据文件类型查找

        -type TYPE:
            f: 普通文件
            d: 目录文件
            l: 符号链接文件
            s：套接字文件
            b: 块设备文件
            c: 字符设备文件
            p: 管道文件    


## [root@localhost test]# find -type f//查找当前目录下的普通文件
./f3
./f1
./f2
./f1.gz
## 4）根据文件大小来查找：

        -size [+|-]#UNIT
            常用单位：k, M, G
            #UNIT: (#-1, #]，如：6k
            -#UNIT：[0,#-1], 如：-6k
            +#UNIT：(#,∞), 如：+6k

## [root@localhost test]# find -size -2k //查找当前目录下文件大小小与2k的文件
.
./f3
./f1
./f2
./f1.gz

## 5）根据时间戳：

        -atime[+|-]#,
            #: [#,#+1)
            +#: [#+1,∞]
            -#: [0,#)
        -mtime //以“天”为单位；

        -ctime//以“天”为单位；

        -amin//以“分钟”为单位：

        -mmin以“分钟”为单位：

        -cmin以“分钟”为单位：

[root@localhost test]# find -atime -7 //表示查找当前目录下七天内访问过的文件
.
./f3
./f1
./f2
## 6）根据权限查找

        -perm [/|-]MODE

        MODE: 精确权限匹配
        /MODE：任何一类(u,g,o)对象的权限中只要能一位匹配即可，或关系，+ 从centos7开始淘汰
        -MODE：每一类对象都必须同时拥有指定权限，与关系
        0 表示不关注

## [root@localhost test]# find -perm -002//表示当其他人有w权限时匹配
./f3
[root@localhost test]# ll
total 12
-rwxr--r-- 1 root root  0 Aug 15 16:46 f1
-rw-r--r-- 1 root root 23 Aug 15 17:49 f1.gz
-rw---x--x 1 root root  6 Aug 15 17:50 f2
-rwxrwxrwx 1 root root 25 Aug 15 21:41 f3
## [root@localhost test]# find -perm 644 //表示精确查找当前目录下权限为644的文件或目录
.
./f1.gz

组合条件



    与：-a
    或：-o
    非：-not, !


默认为-a

    德·摩根定律：
        非(P 且Q) = (非P) 或(非Q)
        非(P 或Q) = (非P) 且(非Q)



具体表现为 

            !A -a !B = !(A -o B)
            !A -o !B = !(A -a B)


## [root@localhost ~]# find /var -not -user root -not -user lp -not -user gdm|wc -l
124 //表示查找属主不是root，lp，gdm的文件或目录
## [root@localhost ~]# find /var -not -user root -not -user lp -not -user gdm|wc -l
124//使用摩根定律即对属主不是root或lp，或gdm的去反。
```
处理动作

    -print：默认的处理动作，显示至屏幕；
    -ls：类似于对查找到的文件执行“ls -l”命令
    -delete：删除查找到的文件；
    -flsfile：查找到的所有文件的长格式信息保存至指定文件中
    -ok COMMAND {} \; 对查找到的每个文件执行由COMMAND指定的命令；
        对于每个文件执行命令之前，都会交互式要求用户确认    

    -exec COMMAND {} \; 对查找到的每个文件执行由COMMAND指定的命令
        {}: 用于引用查找到的文件名称自身
 ```

## [root@localhost ~]# find -perm 640 -ls //对查找到的内容执行ls -l
67444969    4 -rw-r-----   1 root     ssh_keys     1679 Jul 25 12:43 ./etc2016-08-11/ssh/ssh_host_rsa_key
67444971    4 -rw-r-----   1 root     ssh_keys      227 Jul 25 12:43 ./etc2016-08-11/ssh/ssh_host_ecdsa_key
67444973    4 -rw-r-----   1 root     ssh_keys      387 Jul 25 12:43 ./etc2016-08-11/ssh/ssh_host_ed25519_key
134369098    4 -rw-r-----   1 root     lp           3091 Jul 25 20:19 ./et
## [root@localhost test]# ll
total 12
-rwxr--r-- 1 root root  0 Aug 15 16:46 f1
-rw-r--r-- 1 root root 23 Aug 15 17:49 f1.gz
-rw---x--x 1 root root  6 Aug 15 17:50 f2
-rwxrwxrwx 1 root root 25 Aug 15 21:41 f3
## [root@localhost test]# find -perm 644 -delete /对查找到的内容执行删除操作

## [root@localhost test]# ls //使用ls查看，确实删除了
f1  f2  f3
