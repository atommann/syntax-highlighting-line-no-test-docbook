## 简介

测试 Docbook 中代码语法高亮和行号功能。

在 blog 上写了一篇相关笔记，见 [在 Docbook 中给源代码加语法高亮](https://atommann-long.blogspot.jp/2017/10/docbook.html)

## 看起来的样子

![image](https://github.com/atommann/syntax-highlighting-line-no-test-docbook/blob/master/screenshot.png)

## 自定义编程语言

[10.1. Syntax Highlighting](http://www.vogella.com/tutorials/DocBook/article.html#advanced_syntaxhighlighting)

* 在 docbook-xsl-1.79.1/highlighting/ 中加入你自己的语言，如 arduino-hl.xml (从 cpp-hl.xml 复制而来), 修改里面的关键字和别的内容。
* 在 docbook-xsl-1.79.1/highlighting/xslthl-config.xml 中注册上面的文件。
* 可以在 docbook-xsl-1.79.1/html/ 加一个自己的配置文件，如 highlight-arduino.xsl. 然后在 config.xsl 导入它。
* 在 config.xsl 中也可以做一些修改。

arduino-hl.xml 中对下面这些词作高亮处理。
* multiline-comment
* online-comment
* string
* hexnumber
* number
* keywords

所有的 keywords 用同一种颜色，显然不够，比如我们是否要 control 来控制 if, else, for 等等。当然，这取决于你想要的高亮效果。

## 颜色方案

[xslthl Examples](http://xslthl.sourceforge.net/examples/) 有一些例子。


## Intro

Test code syntax highlighting and line number functionaties in docbook.

