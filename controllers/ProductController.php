<?php


namespace app\controllers;


use app\models\Product;
use app\models\Model;

class ProductController extends MainController
{
    protected $layout = 'main';
    protected $useLayout = true;
    public function actionIndex() {
        echo $this->render('index');
    }

    public function actionCatalog() {
        $catalog = Product::getAll();
        $page = $_GET['page'] ?? 0;
       // $catalog = Product::getLimit(($page + 1) * 2);


        echo $this->render('catalog', [
            'catalog' => $catalog,
            'page' => ++$page
        ]);
    }

    public function actionCard() {
        $id = $_GET['id'];

        $good = Product::getOne($id);

        echo $this->render('card', [
            'good' => $good
        ]);
    }

    public function render($template, $params = []) {
        if ($this->useLayout) {
            return $this->renderTemplate("layouts/$this->layout", [
                'menu' => $this->renderTemplate('menu', $params),
                'content' => $this->renderTemplate($template, $params)
            ]);
        } else {
            return $this->renderTemplate($template, $params);
        }
    }

    protected function renderTemplate($template, $params = []) {
        ob_start();
        extract($params);
        $templatePath = VIEWS_DIR . $template . '.php';
        if (file_exists($templatePath)) {
            include $templatePath;
            return ob_get_clean();
        } else {
            die('Шаблона не существует');
        }
    }

}
//Вот ты где мой любимый рендер-шмендер