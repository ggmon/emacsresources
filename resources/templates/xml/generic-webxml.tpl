<?xml version="1.0"?>
<web-app xmlns="http://java.sun.com/xml/ns/javaee"
   xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
   xsi:schemaLocation="http://java.sun.com/xml/ns/javaee http://java.sun.com/xml/ns/javaee/web-app_2_5.xsd"
   version="2.5"> 

  <servlet>
    <servlet-name>%ServletName%</servlet-name>
    <servlet-class>%ServletClass%</servlet-class>
  </servlet>

  <servlet-mapping>
    <servlet-name>%ServletName%</servlet-name>
    <url-pattern>%Pattern%</url-pattern>
  </servlet-mapping>
</web-app>
