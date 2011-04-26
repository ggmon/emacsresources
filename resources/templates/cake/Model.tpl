
<?php
//AppModel gives you all of Cake's Model functionality
class %classname% extends AppModel
{
    // Its always good practice to include this variable.
    var $name = '%classname%';
    // This is used for validation, see Chapter "Data Validation".
    var $validate = array();
    // You can also define associations.
    // See section 6.3 for more information.
    var $hasMany = array('Image' =>
                   array('className' => 'Image')
                   );
    // You can also include your own functions:
    function makeInactive($uid)
    {
        //Put your own logic here...
    }
}
?>
