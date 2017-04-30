<?xml version="1.0"?>

<!--
    Document   : project_transformation.xsl
    Created on : 27 de abril de 2017, 18:40
    Author     : USER1
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="/applications">
        <html>
            <xsl:for-each select="user">
                <head>
                <title>User's information</title>
            </head>
            <body>
                
                <h1>User:<xsl:value-of select="/applications/user/@id"/></h1>
                <h2>Personal information:</h2>
                <p>Name:<xsl:copy-of select="/applications/user/information/identification/firstname"/> <br/>
                    
                    <xsl:value-of select="/applications/user/information/identification/middlename"/> <br/>
                    
                   <xsl:value-of select="/applications/user/information/identification/lastname"/>
                </p>
                <p>Location:<xsl:value-of select="/applications/user/settings/socialsettings/location/city"/> <br/>
                    
                    <xsl:value-of select="/applications/user/settings/socialsettings/location/state"/> <br/>
                    
                   <xsl:value-of select="/applications/user/settings/socialsettings/location/country"/> </p>
                   <p>
                       The account is <xsl:value-of select="/applications/user/information/account/insuspension"/>
                   </p>
                   <p>
                       Contact:<xsl:value-of select="/applications/user/information/identification/emailaddress"/><xsl:value-of select="/applications/user/information/identification/emaildominion"/>
                        with phone number: <xsl:value-of select="/applications/user/information/account/phone"/>
                   </p>
                   <h2>Account information</h2>
                   <p>Account number:<xsl:value-of select="/applications/user/information/account/number"/> with storage for
                   <xsl:value-of select="/applications/user/information/account/storage"/><xsl:value-of select="/applications/user/information/account/storage/@type"/>
                   valid for <xsl:value-of select="/applications/user/information/account/validfor"/>
                   <xsl:value-of select="/applications/user/information/account/validfor/@type"/></p>
                   <p>Payment information: the user pays through<xsl:value-of select="/applications/user/information/account/payingthrough/@mode"/> an
                   amount of <xsl:value-of select="/applications/user/information/account/monthlyfee"/>   <xsl:value-of select="/applications/user/information/account/monthlyfee/@type"/></p>
                   
            </body>
            
            </xsl:for-each>
           
        </html>
    </xsl:template>

</xsl:stylesheet>
