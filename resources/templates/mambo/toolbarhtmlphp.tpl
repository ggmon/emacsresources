
<?php
defined('_VALID_MOS') or die ('Direct Access to this location is not allowed.');
class TOOLBAR_askmission {
  function _DEFAULT($task) {
    mosMenuBar::startTable();
    mosMenuBar::spacer();
    mosMenuBar::deleteList();
    mosMenuBar::spacer();
    mosMenuBar::help('manager');
    mosMenuBar::endTable();
  }
}
?>
