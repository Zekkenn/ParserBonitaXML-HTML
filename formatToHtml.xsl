<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0" xmlns:model="http://www.omg.org/spec/BPMN/20100524/MODEL">
   <xsl:template match="/">
      <html>
         <body>
            <h1>Lane Set</h1>
            <table border="1">
               <tr bgcolor="#9acd32">
                  <th>Nombre</th>
                  <th>Documentación</th>
               </tr>
               <xsl:for-each select="model:definitions/model:process/model:laneSet/model:lane">
                  <tr>
                     <td>
                        <xsl:value-of select="@name" />
                     </td>
                     <td>
                        <xsl:value-of select="model:documentation" />
                     </td>
                  </tr>
               </xsl:for-each>
            </table> 
            <h1>Start Event</h1>
            <table border="1">
               <tr bgcolor="#9acd32">
                  <th>Nombre</th>
                  <th>Documentación</th>
               </tr>
               <xsl:for-each select="model:definitions/model:process/model:startEvent">
                  <tr>
                     <td>
                        <xsl:value-of select="@name" />
                     </td>
                     <td>
                        <xsl:value-of select="model:documentation" />
                     </td>
                  </tr>
               </xsl:for-each>
            </table> 
            <h1>End Event</h1>
            <table border="1">
               <tr bgcolor="#9acd32">
                  <th>Nombre</th>
                  <th>Documentación</th>
               </tr>
               <xsl:for-each select="model:definitions/model:process/model:endEvent">
                  <tr>
                     <td>
                        <xsl:value-of select="@name" />
                     </td>
                     <td>
                        <xsl:value-of select="model:documentation" />
                     </td>
                  </tr>
               </xsl:for-each>
            </table> 
            <h1>User Tasks</h1>
            <table border="1">
               <tr bgcolor="#9acd32">
                  <th>Nombre</th>
                  <th>Documentación</th>
               </tr>
               <xsl:for-each select="model:definitions/model:process/model:userTask">
                  <tr>
                     <td>
                        <xsl:value-of select="@name" />
                     </td>
                     <td>
                        <xsl:value-of select="model:documentation" />
                     </td>
                  </tr>
               </xsl:for-each>
            </table>
            <h1>Service Tasks</h1>
            <table border="1">
               <tr bgcolor="#9acd32">
                  <th>Nombre</th>
                  <th>Documentación</th>
               </tr>
               <xsl:for-each select="model:definitions/model:process/model:serviceTask">
                  <tr>
                     <td>
                        <xsl:value-of select="@name" />
                     </td>
                     <td>
                        <xsl:value-of select="model:documentation" />
                     </td>
                  </tr>
               </xsl:for-each>
            </table>
         </body>
      </html>
   </xsl:template>
</xsl:stylesheet>