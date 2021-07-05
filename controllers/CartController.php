<?php
namespace app\controllers;
use app\models\Cart;




class CartController extends MainController
{

    public function actionCatalog()
    {
        $cart = Cart::getAll();
        echo $this->render('cart', ['cart' => $cart]);
    }

//    public function actionCard() {
//        $id = $_GET['id'];
//
//        $cart = Cart::getOne($id);
//
//        echo $this->render('card', [
//            'cart' => $cart
//        ]);
//    }

}