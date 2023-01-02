<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:template match="/">
        <html>
            <head>
                <title>exercice 4 - </title>
            </head>
            <body>
                <xsl:for-each select="/releve">
                    
                    <h4>Relevie num : <xsl:value-of select="@RIB" /></h4>
                    <h4>Date Releve : <xsl:value-of select="/releve/dateReleve" /></h4>
                    <h4>Solde : <xsl:value-of select="/releve/solde" /></h4>
                    <h6>la date entre : <xsl:value-of select="/releve/operations/@dateDebut" /> et <xsl:value-of select="/releve/operations/@dateFin" /></h6>
                    
                    <table>
                        <tr>
                            <th>type</th>
                            <th>date</th>
                            <th>montant</th>
                            <th>description</th>
                        </tr>
                        <xsl:for-each select="/releve/operations/operation">
                            <tr>
                                <td><xsl:value-of select="@type" /></td>
                                <td><xsl:value-of select="@date" /></td>
                                <td><xsl:value-of select="@montant" /></td>
                                <td><xsl:value-of select="@description" /></td>
                            </tr>
                        </xsl:for-each>
                    </table>
                </xsl:for-each>
                
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>