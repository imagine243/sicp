# 开始学习sicp

## 准备资料
[网友的准备资料](http://cocode.cc/t/sicp/7689)
[网友的总结](http://cocode.cc/t/sicp/3397)
[网友的笔记](https://github.com/xiajava/books/tree/master/SICP)

## 解释器

### mit scheme
安装 
`brew install scheme`

mit scheme 自身就是scheme 解释器
通过在命令行键入 scheme 就进入scheme的交互环境,
(exit) 函数退出交互环境

`scheme < test.scm` 运行代码文件test.scm

### racket
racket 也是scheme的一种方言.
安装 `brew cask install racket`

最开始的时候我用的是[DrRacket](http://racket-lang.org/)和racket方言。[DrRacket](http://racket-lang.org/)使用简单，自带中文，相比于emacs更加容易让新手接受。而关于racket方言因为有实时错误提示和类名归属，所以在前两章的大部分情况下都是使用racket方言。使用racket时候只需要将`#lang racket`放入第一行即可。

但是因为racket取消了set-car!和set-cdr!，所以从第二章末开始使用这两个函数的文件都需要将第一行改为`#lang planet neil/sicp`，这样就能保证程序正常运行。
在2.2.4中使用了图形编辑，只需要在第二行加入`(require ( planet "sicp.ss" ( "soegaard" "sicp.plt" 2 1)))`即可。

随着写的文件越来越大，在使用`#lang planet neil/sicp`的时候编译速度有点慢，因此从第四章开始就开始使用[Emacs](http://www.gnu.org/software/emacs/emacs.html)编辑[MIT Scheme](http://www.gnu.org/software/mit-scheme/)编译了。当然这个并不是必须的，所以关于[Emacs](http://www.gnu.org/software/emacs/emacs.html)和[MIT Scheme](http://www.gnu.org/software/mit-scheme/)以后再说。


## 编辑器
### vscode
插件 vscode-scheme 用于自动补全.
插件 code-runner 用于运行

