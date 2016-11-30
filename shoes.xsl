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
            margin: 0 auto;
            background-color:#ccff00;
            height:900px;
            width:1800px;
            }
            #wrapper
            {
            margin: 0 auto;
            margin-top:50px;
            background-color:black;
            height:850px;
            width:1700px;
            }
            #leftCol
            {
            float:left;
            }
            h2
            {
            margin-left:40px;
            text-align:center;
            color:white;
            }
            ul
            {
            list-style:none;
            text-align:center;
            color:white;
            }
          </style>
        </head>
        <body>
          <div id = "wrapper">
            <div id = "leftCol">
              <h2>All Shoes:</h2>
              <ul>
                <xsl:for-each select="/store/shoe">
                  <li><xsl:value-of select="brand"/></li>
                </xsl:for-each>          
              </ul>
            </div>
          </div>
        </body>
      </html>
    </xsl:template>
</xsl:transform>
