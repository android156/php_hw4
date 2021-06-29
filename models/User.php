<?php

namespace app\models;


class User extends DBModel
{
    public $id;
    public $login;
    public $pass;


    public function __construct($login = '', $pass = '')
    {
        $this->login = $login;
        $this->pass = $pass;
    }


    public static function getTableName() {
        return 'users';
    }


}