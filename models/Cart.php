<?php


namespace app\models;


class Cart extends DBModel
{

    public function getCart() {

    }

    protected static function getTableName()
    {
        return 'cart';
    }
}