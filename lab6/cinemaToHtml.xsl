<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <meta charset="UTF-8"/>
                <title>Disciplines</title>
            </head>
            <body>
                <h2>Data</h2>
                <table border="1">
                    <tr bgcolor="#9acd32">
                        <th>name</th>
                        <th>teacher</th>
                        <th>totalLength</th>
                        <th>percentagePassed</th>
                    </tr>
                    <xsl:for-each select="disciplinesList/course">
                        <tr>
                            <td><xsl:value-of select="name"/></td>
                            <td><xsl:value-of select="teacher"/></td>
                            <td><xsl:value-of select="totalLength"/></td>
                            <td><xsl:value-of select="percentagePassed"/></td>
                        </tr>
                    </xsl:for-each>
                </table>

                <h2>Sort by name</h2>
                <table border="1">
                    <tr bgcolor="#9acd32">
                        <th>name</th>
                        <th>teacher</th>
                        <th>totalLength</th>
                        <th>percentagePassed</th>
                    </tr>
                    <xsl:for-each select="disciplinesList/course">
                        <xsl:sort select="name"/>
                        <tr>
                            <td><xsl:value-of select="name"/></td>
                            <td><xsl:value-of select="teacher"/></td>
                            <td><xsl:value-of select="totalLength"/></td>
                            <td><xsl:value-of select="percentagePassed"/></td>
                        </tr>
                    </xsl:for-each>
                </table>

                <h2>Sort by total length</h2>
                <table border="1">
                    <tr bgcolor="#9acd32">
                        <th>name</th>
                        <th>teacher</th>
                        <th>totalLength</th>
                        <th>percentagePassed</th>
                    </tr>
                    <xsl:for-each select="disciplinesList/course">
                        <xsl:sort select="totalLength"/>
                        <tr>
                            <td><xsl:value-of select="name"/></td>
                            <td><xsl:value-of select="teacher"/></td>
                            <td><xsl:value-of select="totalLength"/></td>
                            <td><xsl:value-of select="percentagePassed"/></td>
                        </tr>
                    </xsl:for-each>
                </table>

               
               

            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>