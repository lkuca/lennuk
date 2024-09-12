<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
    <xsl:output method="html" indent="yes" encoding="utf-8"/>

  <xsl:template match="/* | node()">
    <h3>Auto regnumbrid mis algavad 2</h3>
    <p>
    Kautame starts-with funktsiooni
    </p>
    <ul>
    <xsl:for-each select="autod/auto[starts-with(registrinumber, 2)]">
      <xsl:sort select="vaasta" order="descending"/>
      <li>
        <xsl:value-of select="concat(mark, ', ', registrinumber, ', ', vaasta)"/>
      </li>
    </xsl:for-each>
    </ul>
    <h2>Autod tabelina</h2>
    <table>
      <tr>
        <th>Reg number</th>
        <th>Mark</th>
        <th>Väljastamise aasta</th>
        <th>Omanik</th>
      </tr>
      <xsl:for-each select="autod/auto">
        <tr>
          <td>
            <xsl:value-of select="registrinumber"/>
          </td>
          <td>
            <xsl:value-of select="mark"/>
          </td>
          <td>
            <xsl:value-of select="vaasta"/>
          </td>
          <td>
            <xsl:value-of select="omanik"/>
          </td>
        </tr>
      </xsl:for-each>
    </table>
  </xsl:template>
</xsl:stylesheet>
