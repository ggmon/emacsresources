
<?php

defined('_VALID_MOS') or die ('Direct Access to this location is  not allowed.');
require_once( $mainframe->getPath('toolbar_html')) ;

switch ($task) {

 case 'test':
   break;
 default:
   TOOLBAR_askMission::_DEFAULT($task);
 }

?>
