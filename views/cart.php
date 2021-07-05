<h2>Корзина</h2>

<div>
    <?php foreach ($cart as $item):?>
        <div>
            <h3><a href="/?c=cart&a=catalog<?=$item['id']?>"><?=$item['name']?></a></h3>
            <p>price: <?=$item['price']?></p>
            <button>Удалить</button>
        </div>
    <?php endforeach;?>

</div>
