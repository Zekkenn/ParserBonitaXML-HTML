<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0" xmlns:model="http://www.omg.org/spec/BPMN/20100524/MODEL">
   <xsl:template match="/">
      <html>
         <body> 
            <h1>Actividades</h1>
            <table border="1">
               <tr bgcolor="#9acd32">
                   <th>Id</th>
                  <th>Nombre</th>
                  <th>Documentación</th>
                  <th>Tipo de Actividad</th>
               </tr>
               <xsl:for-each select="model:definitions/model:process/*[name()='model:userTask' or name()='model:serviceTask']">
                  <xsl:variable name="i" select="position()"/>
                   <tr>
                      <td> <xsl:value-of select="concat('AS.', position())"/> </td>
                     <td>
                        <xsl:value-of select="@name" />
                     </td>
                     <td>
                        <xsl:value-of select="model:documentation" />
                     </td>
                     <td>
                         <xsl:if test="name()='model:userTask'"> Actividad de Usuario </xsl:if>
                         <xsl:if test="name()='model:serviceTask'"> Actividad realizada por un servicio </xsl:if>
                     </td>
                  </tr>
               </xsl:for-each>
            </table>
            <h1>Actores</h1>
            <table border="1">
               <tr bgcolor="#9acd32">
                   <th>Id</th>
                  <th>Nombre</th>
                  <th>Documentación</th>
               </tr>
               <xsl:for-each select="model:definitions/model:collaboration/model:participant">
                  <xsl:variable name="i" select="position()"/>
                  <tr>
                      <td> <xsl:value-of select="concat('Ac.', position())"/> </td>
                     <td>
                        <xsl:value-of select="@name" />
                     </td>
                     <td>
                        <xsl:value-of select="model:documentation" />
                     </td>
                  </tr>
               </xsl:for-each>
            </table>
            <h1>Eventos Finales</h1>
            <table border="1">
               <tr bgcolor="#9acd32">
                   <th>Id</th>
                  <th>Nombre</th>
                  <th>Documentación</th>
               </tr>
               <xsl:for-each select="model:definitions/model:collaboration/model:endEvent">
                  <xsl:variable name="i" select="position()"/>
                  <tr>
                      <td> <xsl:value-of select="concat('Ev.', position())"/> </td>
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