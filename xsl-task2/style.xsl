<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/root">
    <html>
      <head>
        <title>daibogh svg</title>
      </head>
      <body>
          <xsl:apply-templates/>
      </body>
    </html>
  </xsl:template>
  <xsl:template match="графика">
    <xsl:element name="svg" >
      <xsl:attribute name="width">
        <xsl:value-of select="@ширина"/>
      </xsl:attribute>
      <xsl:attribute name="height">
        <xsl:value-of select="@высота"/>
      </xsl:attribute>
      <xsl:apply-templates/>
    </xsl:element> 
  </xsl:template>
  <xsl:template match="эллипс">
    <xsl:element name="ellipse" >
      <xsl:attribute name="id">
        <xsl:value-of select="self::node()/@id"/>
      </xsl:attribute>
      <xsl:attribute name="cx">
        <xsl:value-of select="self::node()/@cx"/>
      </xsl:attribute>
      <xsl:attribute name="cy">
        <xsl:value-of select="self::node()/@cy"/>
      </xsl:attribute>
      <xsl:attribute name="rx">
        <xsl:value-of select="self::node()/@rx"/>
      </xsl:attribute>
      <xsl:attribute name="ry">
        <xsl:value-of select="self::node()/@ry"/>
      </xsl:attribute>
      <xsl:attribute name="fill">
        <xsl:value-of select="self::node()/@заливка"/>
      </xsl:attribute>
      <xsl:attribute name="color">
        <xsl:value-of select="self::node()/@ободок"/>
      </xsl:attribute>
      <xsl:attribute name="stroke-width">
        <xsl:value-of select="self::node()/@ширина-ободка"/>
      </xsl:attribute>

    </xsl:element> 
  </xsl:template>
</xsl:stylesheet>