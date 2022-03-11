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
                        <th>Duracion</th>
                    </tr>
                    <xsl:for-each select="bibliotecacd/cd">      
                        <xsl:variable name="titulo">
                            <xsl:value-of select="titulo"/>
                        </xsl:variable>
                        <xsl:variable name="artista">
                            <xsl:value-of select="artista"/>
                        </xsl:variable>
                        <xsl:variable name="sello">
                            <xsl:value-of select="sello"/>
                        </xsl:variable>
                        <xsl:variable name="anyo">
                            <xsl:value-of select="anyo"/>
                        </xsl:variable>
                        <xsl:for-each select="cancion">
                            <xsl:if test="@tiempo &lt; 200">
                                <tr>                                    
                                    
                                </tr>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet> 