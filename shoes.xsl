<?xml version="1.0" encoding="UTF-8" ?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" doctype-public="XSLT-compat" omit-xml-declaration="yes" encoding="UTF-8" indent="yes" />
  
    <xsl:template match="/">
      <html>
        <head>
          <title>Shoe Page</title>
          <style type="text/css">
            body 
            {
            background-color:#ccff00;
            }
            #wrapper
            {
            margin: 0 auto;
            background-color:black;
            height:800px;
            width:800px;
            }
            h2
            {
            text-align:center;
            color:white;
            }
            ul
            {
            list-style-position: inside;
            text-align:center;
            color:white;
            }
          </style>
        </head>
        <body>
          <div id = "wrapper">
            <h2>All Shoes:</h2>
            <ul>
              <xsl:for-each select="/store/shoe">
                <li><xsl:value-of select="brand"/></li>
              </xsl:for-each>          
            </ul>
          </div>
        </body>
      </html>
    </xsl:template>
</xsl:transform>
