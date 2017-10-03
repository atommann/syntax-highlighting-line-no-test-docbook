<?xml version='1.0'?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
                xmlns:saxon="http://icl.com/saxon"
                extension-element-prefixes="saxon" 
                xmlns:xslthl="http://xslthl.sf.net"
                exclude-result-prefixes="xslthl"
                version='1.0'>

<!--
     The location of docbook-xsl
-->
<xsl:import href="file:////home/atommann/docbook/docbook-xsl-1.79.1/html/docbook.xsl"/>

<!--
     here we use a customized file.
-->
<xsl:import href="file:////home/atommann/docbook/docbook-xsl-1.79.1/html/highlight-arduino.xsl"/>

<xsl:output method="html" 
            encoding="UTF-8"
            indent="yes"
            saxon:character-representation="native;decimal"/>
<!--=====================================​=======================================
Code Line Numbering & Highlighting Global Settings
====================================================​=========================-->
<xsl:param name="use.extensions" select="1"></xsl:param>
<xsl:param name="linenumbering.extension" select="1"></xsl:param>
<xsl:param name="linenumbering.everyNth">1</xsl:param>
<xsl:param name="linenumbering.width">4</xsl:param>
<xsl:param name="linenumbering.separator"><xsl:text> </xsl:text></xsl:param>
<xsl:param name="highlight.source" select="1"></xsl:param>

<!--
     we can overrite the setting in highlight.xsl
     maybe make an independent xsl file and include it here.
-->

<!--
  <xsl:template match="xslthl:comment" mode="xslthl">
    <em class="hl-comment" style="color: cyan">
      <xsl:apply-templates mode="xslthl"/>
    </em>
  </xsl:template>

  <xsl:template match="xslthl:keyword" mode="xslthl">
    <strong class="hl-keyword" style="color: green">
      <xsl:apply-templates mode="xslthl"/>
    </strong>
  </xsl:template>
-->

<xsl:param name="html.stylesheet" select="'docbook.css'"/>

</xsl:stylesheet>

