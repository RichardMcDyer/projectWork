<?xml version="1.0" encoding="UTF-8" ?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" doctype-public="XSLT-compat" omit-xml-declaration="yes" encoding="UTF-8" indent="yes" />
  
    <xsl:template match="/">
      <html>
        <head>
          <title>Shoe Page</title>
        </head>
        <body>
          <h2>All Shoes:</h2>
          <ul>
            <xsl:for-each select="/store/shoe">
              <li><xsl:value-of select="brand"/></li>
            </xsl:for-each>          
          </ul>
        
        </body>
      </html>
    </xsl:template>
</xsl:transform>
