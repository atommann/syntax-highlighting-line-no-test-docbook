<?xml version='1.0'?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
                xmlns:saxon="http://icl.com/saxon"
                extension-element-prefixes="saxon" 
                version='1.0'>

<!--
     The location of docbook-xsl
-->
<xsl:import href="file:////home/atommann/docbook/docbook-xsl-1.79.1/html/docbook.xsl"/>
<xsl:import href="file:////home/atommann/docbook/docbook-xsl-1.79.1/html/highlight.xsl"/>

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
<xsl:param name="html.stylesheet" select="'docbook.css'"/>

</xsl:stylesheet>
