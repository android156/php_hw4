<?php


namespace app\controllers;


class CartController extends MainController
{
    public function actionIndex()
    {
        echo $this->render('cart');
    }

    public function actionCart()
    {
        $cart = Cart::getAll();
        var_dump($cart);
    }
}