<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<head>
   <meta/>
</head>
<body>
<style>
table{font-size:30px;text-align:center;width:700px;height:350px;border-spacing:2px;border: 2px solid black}
th{border: 1px solid black}
td{border: 1px solid black}
</style>
  <table>
    <tr style="background-color: blue; height:70px">
      <th>S</th>
      <th>Id</th>
      <th>Name</th>
      <th>Year</th>
    </tr>
    <xsl:for-each select="students/student">
    <tr>
      <td><xsl:number/></td>
      <td><xsl:value-of select="@id"/></td>
      <td><xsl:value-of select="@name"/></td>
      <td><xsl:value-of select="substring(dateOfBirth,string-length(dateOfBirth)-3)"/></td>
    </tr>
    </xsl:for-each>
  </table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>