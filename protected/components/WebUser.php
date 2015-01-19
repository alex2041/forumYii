<?php
	class WebUser extends CWebUser {
    private $_model = null;
 
    function getNick() {
        if($user = $this->getModel()){
            // в таблице User есть поле nick
            return $user->nick;
        }
    }
 
    private function getModel(){
        if (!$this->isGuest && $this->_model === null){
            $this->_model = User::model()->findByPk($this->id);
        }
        return $this->_model;
    }
}
?>