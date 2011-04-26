
<?php

// Here a check is performed to see whether the logged in user has the rights
if (!($acl->acl_check( 'administration', 'edit', 'users', $my->usertype,
                                                       'components', 'all' )
        | $acl->acl_check( 'administration', 'edit', 'users', $my->usertype,
                                              'components', 'com_askmission' )))
{
    mosRedirect( 'index2.php', _NOT_AUTH );
}


defined( '_VALID_MOS' ) or die( 'Direct Access to this location is not allowed.' );

require_once($mosConfig_absolute_path."/components/com_askmission/askmission.class.php");
require_once( $mainframe->getPath( 'admin_html' ) );


$id = mosGetParam($_GET, 'id', 0);
$cid = mosGetParam($_POST, 'cid', array(0));
if(!is_array($cid)) {
  $cid = array(0);
 }



switch ($task) {

 case "publish":

}


?>
