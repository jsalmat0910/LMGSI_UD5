<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h1>Colección de discos de Juan Ramón Salguero Mateos</h1>
                <table border="1" bgcolor="BBBBBB">
                    <tr bgcolor="AA0150">
                        <th>Titulo</th>
                        <th>Artista</th>
                        <th>Sello</th>
                        <th>Año</th>
                        <th>Canciones</th>
                    </tr>
                    <xsl:for-each select="bibliotecacd/cd[sello='Legendury Beatz']">
                        <tr>
                            <td>
                                <xsl:value-of select="titulo"/>
                            </td>
                            <td>
                                <xsl:value-of select="artista"/>
                            </td>
                            <td>
                                <xsl:value-of select="sello"/>
                            </td>
                            <td>
                                <xsl:value-of select="anyo"/>
                            </td>
                            <td>
                                <xsl:for-each select="cancion">
                                    <xsl:value-of select="."/>
                                    <br/>
                                </xsl:for-each>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>