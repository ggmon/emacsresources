<?php

defined( '_VALID_MOS' ) or die( 'Direct Access to this location is not allowed.' );

class HTML_askmission {
  
  function ($option , $rows, $pageNav) {
    
    global $my;

    mosCommonHTML::loadOverlib();
    ?>
      <form action="index2.php" method="post" name="adminForm">
           <input type="hidden" name="task" value=""/>   
          </form>

<?php 
  }
  
}

?>
