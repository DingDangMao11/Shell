#  strings命令

strings命令在对象文件或二进制文件中查找可打印的字符串。字符串是4个或更多可打印字符的任意序列，以换行符或空字符结束。 strings命令对识别随机对象文件很有用。

## 语法
### strings [ -a ] [ - ] [ -o ] [ -t Format ] [ -n Number ] [ -Number ] [ file ... ]
选项
## -a --all：扫描整个文件而不是只扫描目标文件初始化和装载段
##  -f –print-file-name：在显示字符串前先显示文件名
##  -n –bytes=[number]：找到并且输出所有NUL终止符序列
##  - ：设置显示的最少的字符数，默认是4个字符
##  -t --radix={o,d,x} ：输出字符的位置，基于八进制，十进制或者十六进制
##  -o ：类似--radix=o
##  -T --target= ：指定二进制文件格式
##  -e --encoding={s,S,b,l,B,L} ：选择字符大小和排列顺序:s = 7-bit, S = 8-bit, {b,l} = 16-bit, {B,L} = 32-bit
```
实例
列出ls中所有的ASCII文本：
strings /bin/ls

列出ls中所有的ASCII文本：
cat /bin/ls strings

查找ls中包含libc的字符串，不区分大小写：
strings /bin/ls | grep -i libc
```


# strings - print the strings of printable characters in files.
 意思是， 打印文件中可打印的字符。  我来补充一下吧， 这个文件可以是文本文件（test.c）, 可执行文件(test),  动态链接库(test.o), 静态链接库(test.a)
脱离代码地长篇大论而不去实际验证， 不是我的风格。 还是搞点代码下菜吧（代码存在test.c中）：

```
#include <stdio.h> 
  
int add(int x, int y) 
{ 
    return x + y; 
} 
  
int main() 
{ 
    int a = 1; 
    int b = 2; 
    int c = add(a, b); 
    printf("oh, my dear, c is %d\n", c); 
  
    return 0; 
} 
```

#  strings test.c的结果：
```
[taoge@localhost learn_c]$ strings test.c  
#include <stdio.h> 
int add(int x, int y) 
  return x + y; 
int main() 
  int a = 1; 
  int b = 2; 
  int c = add(a, b); 
  printf("oh, my dear, c is %d\n", c); 
  return 0; 
 
可以看到， 确实打印出了test.c中的很多字符。
```
下面， 我们对可执行文件用strings试试， 如下：

[taoge@localhost learn_c]$ gcc test.c  
[taoge@localhost learn_c]$ strings a.out  
/lib/ld-linux.so.2 
=$TsU 
__gmon_start__ 
libc.so.6 
_IO_stdin_used 
printf
__libc_start_main 
GLIBC_2.0 
PTRh  
[^_] 
oh, my dear, c is %d 
[taoge@localhost learn_c]$  
可以看到， 打印出了a.out中很多字符。

实际上， 如果有目标文件、静态库或动态库， ， 也是可以用strings命令进行打印操作的。 我们来看看：
xxx.h文件：
?
1
void print();
xxx.c文件：

#include <stdio.h> 
#include "xxx.h" 
  
void print() 
{ 
  printf("rainy days\n"); 
} 
然后， 我们来看看怎么制作静态、动态库吧（在后续博文中会继续详细介绍）：


##  [taoge@localhost learn_strings]$ ls

xxx.c xxx.h 

##  [taoge@localhost learn_strings]$ gcc -c xxx.c

##  [taoge@localhost learn_strings]$ ar rcs libxxx.a xxx.o 

##  [taoge@localhost learn_strings]$ gcc -shared -fPIC -o libxxx.so xxx.o 

##  [taoge@localhost learn_strings]$ ls

libxxx.a libxxx.so xxx.c xxx.h xxx.o 

##  [taoge@localhost learn_strings]$ strings xxx.o 

rainy days 

##  [taoge@localhost learn_strings]$ strings libxxx.a 

!<arch> 
/        1437887339 0   0   0    14    ` 
Rprint 
xxx.o/     1437887333 501  502  100664 848    ` 
rainy days 
GCC: (GNU) 4.4.4 20100726 (Red Hat 4.4.4-13) 
.symtab 
.strtab 
.shstrtab 
.rel.text 
.data 
.bss 
.rodata 
.comment 
.note.GNU-stack 
xxx.c 
print 
puts 

##  [taoge@localhost learn_strings]$ strings libxxx.so 
__gmon_start__ 

_init 
_fini 
__cxa_finalize 
_Jv_RegisterClasses 
print 
puts 
libc.so.6 
_edata 
__bss_start 
_end 
GLIBC_2.1.3 
GLIBC_2.0 
rainy days 

看到了吧。

strings命令很简单， 看起来好像没什么， 但实际有很多用途。 下面， 我来举一个例子。  
在大型的软件开发中， 假设有100个.c/.cpp文件， 这个.cpp文件最终生成10个.so库， 那么怎样才能快速知道某个.c/.cpp文件编译到那个.so库中去了呢？ 
当然， 你可能要说， 看makefile不就知道了。 对， 看makefile肯定可以， 但如下方法更好， 直接用命令：
?
1
strings -f "*.so" | grep "xxxxxx"
如果还不明白， 那就就以上面的小程序为例为说明， 不过， 此处我们考虑所有的文件， 如下：

## taoge@localhost learn_c]$ strings -f * | grep "my dear"
a.out: oh, my dear, c is %d 
test.c:   printf("oh, my dear, c is %d\n", c); 
## [taoge@localhost learn_c]$
可以看到， 源文件test.c和可执行文件中皆有"my dear"串， 一下子就找到了对应的文件，清楚了吧。
如果某.c/.cpp文件编译进了.so库， 那么，strings -f * | grep "my dear"必定可以找到对应的.so文件， 
其中"my dear"为该.c/.cpp文件中的某个日志串（比如以printf为打印）。
