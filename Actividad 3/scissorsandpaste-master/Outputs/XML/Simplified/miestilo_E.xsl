<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text"/>
    <xsl:template match="/">
        <xsl:for-each select="root/record">
                <xsl:sort select="date/@when" order="descending" data-type="text"/>
            <xsl:if test="date/year='1789'">
                <xsl:value-of select="id"/>
                <xsl:text>&#xA;</xsl:text>
                <xsl:value-of select="title"/>
                <xsl:text>&#xA;</xsl:text>
                <xsl:value-of select="date"/>
                <xsl:text>&#xA;</xsl:text>
            </xsl:if>
        </xsl:for-each>
    </xsl:template>

</xsl:stylesheet>