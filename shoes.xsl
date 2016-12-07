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
            background-color:black;
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
            margin-bottom:100px;
            background-color:black;
            height:5000px;
            width:1150px;
            background: linear-gradient(to bottom right, #262626, #bfbfbf, orange, red, pink); /* Standard syntax */
             border-radius: 25px;
             box-shadow: 10px 10px 5px #888888;
            }
            #leftCol
            {
            float:left;
            width:200px;
            height:4000px;
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
            #bname
            {
            float:right;
            width:900px;
            height:100px;
            }
            .brand
            {
            color:black;
            text-decoration:underline;
            }
          </style>
       <!-- Ajax************
        <script type="text/javascript">
        var XMLHttpRequestObject = false;

        if (window.XMLHttpRequest) {
            XMLHttpRequestObject = new XMLHttpRequest();
        } else if (window.ActiveXObject) {
            XMLHttpRequestObject =
              new ActiveXObject("Microsoft.XMLHTTP");
        }
        function getData(datasource, divID) {
            if (XMLHttpRequestObject) {
                //var obj = document.getElementById(divID);
                XMLHttpRequestObject.open("GET", datasource);
                XMLHttpRequestObject.onreadystatechange = function () {
                    if (XMLHttpRequestObject.readyState == 4 
                     && XMLHttpRequestObject.status == 200) {
                      var body = document.getElementsByTagName('body');
                      //remove if exists
                      if (document.getElementById(divID)){
                        body[0].removeChild(document.getElementById(divID));
                      }
                      var ajaxDesc = document.createElement('div');
                      ajaxDesc.id = divID;
                      ajaxDesc.innerHTML = XMLHttpRequestObject.responseText;
                      body[0].appendChild(ajaxDesc);
                      /*  obj.innerHTML = 
                        XMLHttpRequestObject.responseText;*/
                    }
                }
                XMLHttpRequestObject.send(null);
            }
        }
    </script> -->
        </head>
        <body>
          <h1>KDR</h1>
          <div id = "wrapper">
           <!-- Ajax form ***********
            <form>
             <input type="button" value="Display Message" onclick = "getData('testdata.txt', 'targetDiv')">
            </form>
            <div id="targetDiv">
             <p> Here's the data </p>
            </div>
             <p>
               <table>
                  <tr>
                   <td><img src="AjaxAmsterdam.jpg" onmouseover="getData('AjaxAmsterdam.txt','ajaxDesc')"/></td>
                   <td><img src="AjaxBleach.jpg" onmouseover="getData('AjaxBleach.txt','ajaxDesc')"/></td>
                    <td><img src="AjaxGreek.jpg" onmouseover="getData('AjaxGreek.txt','ajaxDesc')"/></td>
                    <td><img src="AjaxSchematic.jpg" onmouseover="getData('AjaxSchematic.txt','ajaxDesc')"/></td>
                 </tr>
              </table>
               <div id="ajaxDesc"> </div>
                </p>-->

            <div id = "leftCol">
             <h2>All Shoes:</h2>
              <ul>
                <xsl:for-each select="/store/shoe">
                  <li><a href="#{generate-id(brand)}">
                     <xsl:value-of select="brand"/></a></li>
                </xsl:for-each> 
              </ul>
            </div>
                <xsl:for-each select="/store/shoe">
                  <div id="bname">
                    <h2 class="brand"><a brand="{generate-id(brand)}">
                    <xsl:value-of select="brand"/></a></h2>
                  </div>
                  <img style="float:right" width="170" height="150" src="{image}" border="2" border-color="black"/>
                </xsl:for-each>
                
          </div>
        </body>
      </html>
    </xsl:template>
</xsl:transform>
