<?xml version="1.0" encoding="utf-8"?>
<!-- This file is a slightly adopted version of Jarno Elovirtas dita2html.xsl file in his plugin net.sourceforge.dita-ot.html. It omits completely the navigation templates.-->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:dita-ot="http://dita-ot.sourceforge.net/ns/201007/dita-ot"
                xmlns:ditamsg="http://dita-ot.sourceforge.net/ns/200704/ditamsg"
                version="2.0"
                exclude-result-prefixes="dita-ot ditamsg">
                
  <xsl:import href="plugin:org.dita.xhtml:xsl/dita2html-base.xsl"/>
  <xsl:import href="plugin:org.dita.xhtml:xsl/xslhtml/dita2htmlImpl.xsl"/>
  <xsl:import href="plugin:org.dita.xhtml:xsl/xslhtml/dita2html5Impl.xsl"/>
  <xsl:import href="plugin:org.dita.xhtml:xsl/xslhtml/hi-d2html5.xsl"/>
  <xsl:import href="plugin:org.dita.xhtml:xsl/map2htmtoc/map2htmlImpl.xsl"/>
  <xsl:import href="plugin:org.dita.xhtml:xsl/xslhtml/rel-links.xsl"/>

  <xsl:param name="FILEDIR"/>
  <xsl:param name="FILENAME"/>
  <xsl:param name="input.map.url"/>

  <xsl:variable name="input.map" select="document($input.map.url)"/>
  
  <xsl:output method="html"
              encoding="UTF-8"
              indent="no"
              omit-xml-declaration="yes"/>
              
  <xsl:template match="/">
    <xsl:text>Title: </xsl:text>
    <xsl:apply-templates select="*[contains(@class, ' topic/topic ')]/*[contains(@class, ' topic/title ')]" mode="text-only"/>
    <xsl:text>&#xA;</xsl:text>
    <xsl:text>----&#xA;</xsl:text>
    <xsl:text>Text: </xsl:text>
    <xsl:apply-templates select="*" mode="chapterBody"/>
 </xsl:template>
 
   <xsl:template match="*" mode="chapterBody">
      <xsl:call-template name="generateBreadcrumbs"/>
      <xsl:call-template name="gen-user-sidetoc"/>
      <xsl:apply-templates/> <!-- this will include all things within topic; therefore, -->
      <!-- title content will appear here by fall-through -->
      <!-- followed by prolog (but no fall-through is permitted for it) -->
      <!-- followed by body content, again by fall-through in document order -->
      <!-- followed by related links -->
      <!-- followed by child topics by fall-through -->
      
      <xsl:call-template name="gen-endnotes"/>    <!-- include footnote-endnotes -->
      <xsl:call-template name="gen-user-footer"/> <!-- include user's XSL running footer here -->
      <xsl:call-template name="processFTR"/>      <!-- Include XHTML footer, if specified -->
      <xsl:value-of select="$newline"/>
  </xsl:template>
  
  <xsl:template match="*[contains(@class, ' topic/topic ')]/*[contains(@class, ' topic/title ')]">
  </xsl:template>

  <!-- This template puts the caption below the image -->
<xsl:template match="*[contains(@class, ' topic/fig ')]" mode="fig-fmt">
  <!-- This template is deprecated in DITA-OT 1.7. Processing will moved into the main element rule. -->
  <xsl:variable name="default-fig-class">
    <xsl:apply-templates select="." mode="dita2html:get-default-fig-class"/>
  </xsl:variable>
  <xsl:apply-templates select="*[contains(@class, ' ditaot-d/ditaval-startprop ')]" mode="out-of-line"/>
  <div>
    <xsl:if test="$default-fig-class != ''">
      <xsl:attribute name="class"><xsl:value-of select="$default-fig-class"/></xsl:attribute>
    </xsl:if>
    <xsl:call-template name="commonattributes">
      <xsl:with-param name="default-output-class" select="$default-fig-class"/>
    </xsl:call-template>
    <xsl:call-template name="setscale"/>
    <xsl:call-template name="setidaname"/>
    <xsl:apply-templates select="*[not(contains(@class, ' topic/title '))][not(contains(@class, ' topic/desc '))] |text()|comment()|processing-instruction()"/>
  </div>
  <xsl:apply-templates select="*[contains(@class, ' ditaot-d/ditaval-endprop ')]" mode="out-of-line"/>
  <xsl:call-template name="place-fig-lbl"/>
  <xsl:value-of select="$newline"/>
</xsl:template>  
  
</xsl:stylesheet>
