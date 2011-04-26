
<?php
include 'objects/common.inc.php' ;

class %Page% extends PublicPage {

  function %Page% () {
    
    PublicPage::PublicPage("%Page%", array("trig1"=>"action"));
    
  }

  function display () {
    
    $this->getTemplateData();

    $this->_smarty->assign("STYLE",$this->_styleSheet);
    $this->_smarty->assign("PAGENAME","%Page%");
    $this->_smarty->display($this->_template,$_SESSION["user_id"]);
  }


  function getTemplateData () {
    
  }

}


$page = new %Page%()
?>
