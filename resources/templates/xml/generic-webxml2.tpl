<?xml version="1.0"?>
<web-app xmlns="http://java.sun.com/xml/ns/javaee"
   xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
   xsi:schemaLocation="http://java.sun.com/xml/ns/javaee http://java.sun.com/xml/ns/javaee/web-app_2_5.xsd"
   version="2.5"> 

  <display-name>%AppName%</display-name>

  <description>%description%</description>

  <session-config>
   <session-timeout>30</session-timeout>
  </session-config>

  <welcome-file-list>
   <welcome-file>index.jsp</welcome-file>
   <welcome-file>index.html</welcome-file>
  </welcome-file-list>

  <servlet>
    <servlet-name>%ServletName%</servlet-name>
    <servlet-class>%ServletClass%</servlet-class>
  </servlet>

  <servlet-mapping>
    <servlet-name>%ServletName%</servlet-name>
    <url-pattern>%Pattern%</url-pattern>
  </servlet-mapping>
</web-app>
