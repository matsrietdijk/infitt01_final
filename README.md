SETUP:
Stap 1:
Laat de keytool van java een keystore genereren, gebruik hiervoor de volgende code:

	keytool -genkey -keyalg RSA -alias tomcat -keystore keystore.jks -validity 999 -keysize 2048

	* neem als password: changeit

Stap 2:
Noteer het volledige path naar de keystore file in "$CATALINA_HOME/conf/server.xml" op regel 87:

	clientAuth="false" sslProtocol="TLS" keystoreFile="[PATH TO KEYSTORE.JKS]/keystore.jks" keystorePass="changeit" />

	* als er je changeit als wachtwoord heb gekozen hoef je alleen het path naar de keystore in te vullen anders verander je ook de keystorePass

Stap 3:
Neem "mysql-connector-java-5.1.3.jar" uit de map "TOMCAT" en plaats deze in "$CATALINA_HOME/lib/".

Stap 4:
Neem "EnqueteDB.sql" uit de map "SQL" en importeer deze in je mysql database, gebruik als database name EnqueteDB.

Stap 5:
Neem de volgende code over in "$CATALINA_HOME/conf/context.xml" binnen het "Context"-element en verander de plaatshouders:

    <Resource name="jdbc/EnqueteDB" auth="Container" type="javax.sql.DataSource"
               maxActive="100" maxIdle="30" maxWait="10000"
               username="[MySQL USER]" password="[MySQL PASSWORD]" driverClassName="com.mysql.jdbc.Driver"
               url="jdbc:mysql://localhost:3306/EnqueteDB"/>

    * [MySQL USER] moet de username van de database user zijn
    * [MySQL PASSWORD] moet het wachtwoord zijn wat bij die zelfde database user hoort

Stap 6:
Neem de volgende code over in "$CATALINA_HOME/conf/tomcat-users.xml" binnen het "tomcat-users"-element:

	<role rolename="admin"/>
	<role rolename="user"/>

	<user username="admin" password="admin" roles="user,admin"/>
	<user username="user" password="user" roles="user"/>

Stap 7:
Neem "final.war" uit de map "TOMCAT" en plaats deze in "$CATALINA_HOME/webapps/"
Als "final.war" niet in deze map staat voer je de volgende code uit vanuit de route van dit project:

	jar cvf final.war WEB-INF/* login.html login-failed.html groundwork/*

Stap 8:
Herstart je tomcat door middel van het volgende commando's:

	sh $CATALINA_HOME/bin/shutdown.sh

	sh $CATALINA_HOME/bin/startup.sh

Stap 9:
Navigeer met je webbrowser naar:

	localhost:8080/final/home

	* er wordt een waarschuwing gegeven over het certificaat, accepteer het certificaat

Stap 10:
Gebruik om in te loggen een van de volgende combinaties:
	
	Username: admin  		Password: admin
	Username: user 			Password: user