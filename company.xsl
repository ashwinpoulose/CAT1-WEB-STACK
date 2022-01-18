
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">
<html>
<head> </head>
<body>
<h1 style="text-align:center">Employee Management System</h1>
<table border="2" align="center">
      <tr bgcolor="blue">
              <th>ID</th>
              <th>NAME</th>
              <th>AGE</th>
              <th>SALARY</th>
              <th>EMAIL</th>
              <th>MobNum</th>
              <th>Designation</th>
              <th>PROMOTION</th>
        </tr>

        <xsl:for-each select="company/employee">

        <tr>

            <td>

                <xsl:value-of select="emp_id"/>

            </td>

            <td>

                <xsl:value-of select="emp_name"/>

            </td>

            <td>

                <xsl:value-of select="emp_age"/>

            </td>


            <td>

                <xsl:value-of select="emp_sal"/>

            </td>
            
            <td>

                <xsl:value-of select="emp_email"/>

            </td>

            <td>

                <xsl:value-of select="emp_mob"/>

            </td>

            <td>

                <xsl:value-of select="emp_designation"/>

            </td>

            <td>

                <xsl:choose>
                    <xsl:when test="emp_age &gt;=50">
                      
                    <td>Assosiate Project Manager</td>
                
                </xsl:when>
                <xsl:when test="emp_age &gt;=40 and emp_age &lt;=49 ">
                        
                <td>Team Leader</td>
                
            </xsl:when>
                <xsl:otherwise>
                       
                <td>Developer</td>
                         
                </xsl:otherwise>
                </xsl:choose>

            </td>

           
        </tr>

    </xsl:for-each>

</table>
<br>
<br> </br>
</br>

<h1 style="text-align:center">Complete Employee Details</h1>
                <xsl:apply-templates/>
            </body>
        </html>
          
    </xsl:template>

    <xsl:template match="cd">
        <p>
            <xsl:apply-templates select="emp_id"/>
            
            <xsl:apply-templates select="emp_name"/>
            <xsl:apply-templates select="emp_age"/>
            <xsl:apply-templates select="emp_sal"/>
            <xsl:apply-templates select="emp_email"/>
            <xsl:apply-templates select="emp_mob"/>
            <xsl:apply-templates select="emp_designation"/>
            
            
        </p>
    </xsl:template>

    <xsl:template match="emp_id">
        Employee_Id: <span style="color:#ff0000">
            <xsl:value-of select="."/>
        </span>
        <br />
    </xsl:template>

   
    <xsl:template match="emp_name">
        Employee_name: <span style="color:#00ff00">
            <xsl:value-of select="."/>
        </span>
        <br />
    </xsl:template>

    
    <xsl:template match="emp_age">
        Employee_age: <span style="color:ff0000">
            <xsl:value-of select="."/>
        </span>
        <br />
    </xsl:template>

    
    <xsl:template match="emp_sal">
        Employee_Salary: <span style="color:#00ff00">
            <xsl:value-of select="."/>
        </span>
        <br />
    </xsl:template>

   
    <xsl:template match="emp_email">
        Employee_mail: <span style="color:#ff0000">
            <xsl:value-of select="."/>
        </span>
        <br />
    </xsl:template>

   
    <xsl:template match="emp_mob">
        Employee_Mobile number: <span style="color:#00ff00">
            <xsl:value-of select="."/>
        </span>
        <br />
    </xsl:template>


    <xsl:template match="emp_designation">
        Employee_Designation: <span style="color:#ff0000">
            <xsl:value-of select="."/>
        </span>
        <br />
    </xsl:template>

    
    
</xsl:stylesheet>