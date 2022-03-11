<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
    <html>
    <body>
    <h1>Mi biblioteca personal de Juan Ramón Salguero Mateos</h1>
        <table>
        <tr bgcolor="AA0150">
            <th>ISBN</th>
            <th>Título</th>
            <th>Autor</th>
            <th>Precio</th>
        </tr>
    <!--<xsl:for-each select="Librería/Libro[Autor='Carmen Mola']">-->
        <xsl:for-each select="Librería/Libro[Autor!='Carmen Mola']">
        <xsl:sort select="Precio"/>
        <tr>
            <td><xsl:value-of select="ISBN"/></td>
            <td><xsl:value-of select="Título"/></td>
            <td><xsl:value-of select="Autor"/></td>
            <td><xsl:value-of select="Precio"/></td>
        </tr>
        </xsl:for-each>   
    </table>
    </body>
    </html>
</xsl:template>
</xsl:stylesheet>