INPUT=hello.xml
OUTPUT=hello.html

# change to your own path and use the proper version number
SAXON_PATH=/home/atommann/docbook/saxon6-5-5/saxon.jar
SAXON_EXT_PATH=/home/atommann/docbook/docbook-xsl-1.79.1/extensions/saxon65.jar
XSLTHL_PATH=/home/atommann/docbook/xslthl-2.1.3/xslthl-2.1.3.jar
CONFIG_PATH=-Dxslthl.config="file:////home/atommann/docbook/docbook-xsl-1.79.1/highlighting/xslthl-config.xml"

#saxon 6.5.5
all:
	java -classpath $(SAXON_PATH):$(SAXON_EXT_PATH):$(XSLTHL_PATH) $(CONFIG_PATH) com.icl.saxon.StyleSheet -o $(OUTPUT) $(INPUT) config.xsl


all-rename: 
	java -classpath /home/atommann/docbook/saxon6-5-5/saxon.jar:/home/atommann/docbook/docbook-xsl-1.79.1/extensions/saxon65.jar:/home/atommann/docbook/xslthl-2.1.3/xslthl-2.1.3.jar -Dxslthl.config="file:////home/atommann/docbook/docbook-xsl-1.79.1/highlighting/xslthl-config.xml" com.icl.saxon.StyleSheet -o my_article.html my_article.xml config.xsl use.extension=1


#saxon 9
saxon9:
	java -classpath /usr/share/java/saxon/saxon.jar:/home/atommann/docbook/xslthl-2.1.3/xslthl-2.1.3.jar:/home/atommann/docbook/docbook-xslt2-2.0.15/docbook-xslt2-2.0.15.jar -Dxslthl.config="file:////home/atommann/docbook/xslthl-2.1.3/highlighters/xslthl-config.xml" net.sf.saxon.Transform -o:output.html input.xml config.xsl



#Xalan
xalan:
	java -classpath /usr/share/java/xalan-j2.jar:/usr/share/java/xerces-j2.jar:/usr/share/java/xalan-j2-serializer.jar:/usr/share/java/xml-commons-apis.jar:/home/atommann/docbook/xslthl-2.1.3/xslthl-2.1.3.jar -Dxslthl.config="file:////usr/share/sgml/docbook/xsl-stylesheets/highlighting/xslthl-config.xml" org.apache.xalan.xslt.Process -OUT output.html -IN c-warm-up-with-arduino-leds.xml -XSL config.xsl

copyback:
	cp ./docbook-xsl-1.79.1/highlighting/arduino-hl.xml ~/docbook/docbook-xsl-1.79.1/highlighting/arduino-hl.xml
	cp ./docbook-xsl-1.79.1/html/highlight-arduino.xsl  ~/docbook/docbook-xsl-1.79.1/html/highlight-arduino.xsl 

# Notes
#
# I am not familiar with java stuff, for example the classpath can be set as system environment parameters to shorten the command line.
#
# http://garyliutw.blogspot.jp/2013/07/docbook-line-numbering-code-highlighting.html
#
# saxon command in Windows, please refer to Gary's blog article above.
# java -cp "D:\docbook\xslthl-2.1.0\xslthl-2.1.0.jar;D:\docbook\saxon6-5-5\saxon.jar;D:\docbook\docbook-xsl-1.78.1\extensions\saxon65.jar" -Dxslthl.config="file:///D:/docbook/docbook-xsl-1.78.1/highlighting/xslthl-config.xml" com.icl.saxon.StyleSheet -o output\my_aritcle.html my_article.xml my_article.xsl use.extensions=1
#
# I wrote a blog entry about this, see:
# https://atommann-long.blogspot.jp/2017/10/docbook.html
#
