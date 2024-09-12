<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
  <xsl:output method="html" indent="yes" encoding="utf-8"/>

  <xsl:template match="/">
    <h3>Lennujaam andmetabel</h3>
    <table border="1">
      <tr>
        <th>lennujaam</th>
        <th>aeg</th>
        <th>summa</th>
        <th>lennujaam asukoht</th>
        <th>lennujaam kood</th>
        <th>lennujaam riigi kood</th>
        <th>lennujaam GPS kood</th>
      </tr>
      <xsl:for-each select="lennujaam/lennujaamtable">
        <tr>
          <td>
            <xsl:value-of select="lennujaam_nimi"/>
          </td>
          <td>
            <xsl:value-of select="aeg"/>
          </td>
          <td>
            <xsl:value-of select="reis/summa"/>
          </td>
          <td>
            <xsl:value-of select="lennujaam_asukoht"/>
          </td>
          <td>
            <xsl:value-of select="lennujaam_kood"/>
          </td>
          <td>
            <xsl:value-of select="lennujaam_riigi_kood"/>
          </td>
          <td>
            <xsl:value-of select="lennujaam_GPS_kood"/>
          </td>
        </tr>
      </xsl:for-each>
    </table>
    <br/>
    <h2>Ülesanne 1 ja 2</h2>
    
      <xsl:for-each select="lennujaam/lennujaamtable">
        <ul>

          <h1>
            <xsl:value-of select="lennujaam_asukoht"/>
          </h1>
          <li>
            <xsl:value-of select="lennujaam_nimi"/>
          </li>
          <li>
            <xsl:value-of select="aeg"/>
          </li>
          <li>
            <xsl:value-of select="summa"/>
          </li>
          <li>
            <xsl:value-of select="lennujaam_kood"/>
          </li>
          <li>
            <xsl:value-of select="lennujaam_riigi_kood"/>
          </li>
          <li>
            <xsl:value-of select="lennujaam_GPS_kood"/>
          </li>
        </ul>
         
        
      </xsl:for-each>
    
    <br/>
    <h2>Ülesanne 3</h2>
    <xsl:for-each select="lennujaam/lennujaamtable">
      <ul style="background-color: yellow;">
        <li>
          summa: <xsl:value-of select="reis/summa"/>
        </li>
      </ul>
    </xsl:for-each>
    <br/>
    <h2>Ülesanne 4</h2>
  </xsl:template>
</xsl:stylesheet>
