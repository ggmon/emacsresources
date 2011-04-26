
<?xml version="1.0" ?>
<mosinstall type="component">
 <name>%componentname%</name>
 <creationDate>%date%</creationDate>
 <author>%author%</author>
 <copyright>%copyright%</copyright>
 <authorEmail>%email%</authorEmail>
 <authorUrl>%authorurl%</authorUrl>
 <version>1.0</version>
 <files>
  <filename>%componentname%.php</filename>
  <filename>%componentname%.html.php</filename>
  <filename>%componentname%.class.php</filename>
 </files>
     <install>
  <queries>
   <query>DROP TABLE IF EXISTS ``;</query>
   <query>CREATE TABLE `` (
    )
   </query>
  </queries>
 </install>
 <uninstall>
  <queries>
   <query>DROP TABLE IF EXISTS ``;</query>
  </queries>
 </uninstall>
 <installfile>
  <filename>install.%componentname%.php</filename>
 </installfile>
 <uninstallfile>
  <filename>uninstall.%componentname%.php</filename>
 </uninstallfile>
   <administration>
    <menu>%componentname%</menu>
    <submenu>
     <menu>Menu</menu>
    </submenu>
    <files>
      <filename>admin.%componentname%.php</filename>
      <filename>admin.%componentname%.html.php</filename>
      <filename>toolbar.%componentname%.php</filename>
      <filename>toolbar.%componentname%.html.php</filename>
    </files>
   </administration>
</mosinstall>
