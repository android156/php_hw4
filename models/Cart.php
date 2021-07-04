<?php


namespace app\models;


class Cart extends DBModel
{
    public $id;
    public $session_id;
    public $goods_id;
    public $image;
    public $name;
    public $description;
    public $price;

    /**
     * Cart constructor.
     * @param $session_id
     * @param $goods_id
     * @param $image
     * @param $name
     * @param $description
     * @param $price
     */
    public function __construct($session_id = null, $goods_id = null, $image = null, $name = null, $description = null, $price = null)
    {
        $this->session_id = $session_id;
        $this->goods_id = $goods_id;
        $this->image = $image;
        $this->name = $name;
        $this->description = $description;
        $this->price = $price;
        echo 'Корзина создана';}


    protected static function getTableName()
    {
        return 'cart_goods_detailed';
    }
}