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
            background-color:black;
            height:900px;
            width:1800px;
            }
            h1
            {
            margin: 0 auto;
            text-align:center;
            color:red;
            font-size:50px;
            text-shadow:2px 2px yellow;
            }
            #wrapper
            {
            margin: 0 auto;
            background-color:black;
            height:850px;
            width:1700px;
            background: linear-gradient(to bottom right, #262626, #bfbfbf, orange, red, pink); /* Standard syntax */
            }
            #leftCol
            {
            float:left;
            width:200px;
            height:850px;
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
            td
            {
            float:right;
            }
            td
            {
            float:right;
            }
          </style>
        </head>
        <body>
          <h1>KDR</h1>
          <div id = "wrapper">
            <div id = "leftCol">
              <h2>All Shoes:</h2>
              <ul>
                <xsl:for-each select="/store/shoe">
                  <li><xsl:value-of select="brand"/></li>
                </xsl:for-each>          
              </ul>           
            </div>
              <td>
                <xsl:for-each select="/store/shoe">
                  <img width="100" height="100" src="{image}"/><br/>
                </xsl:for-each>
              </td>
          </div>
        </body>
      </html>
    </xsl:template>
</xsl:transform>
