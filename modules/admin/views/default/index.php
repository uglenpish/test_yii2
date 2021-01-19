<?php
use yii\helpers\Html;
use yii\grid\GridView;

?>
<div class="admin-default-index">
  <h1>Административная часть</h1>

  <table class="table table-bordered">
    <caption>Список всех книг</caption>

    <thead>
      <tr>
        <th>id</th>
        <th>Автор</th>
        <th>Название книги</th>
      </tr>
    </thead>

    <tbody>
      <?php foreach ($books as $book): ?>
        <tr>
          <td><?php echo $book[ 'id' ] ?></td>
          <td><?php echo $book['author']['name'] ?></td>
          <td><?php echo $book[ 'name' ] ?></td>
        </tr>
      <?php endforeach ?>
    </tbody>
  </table>


  <table class=" table table-bordered">
    <caption>Количество книг у каждого автора</caption>
    <thead>
      <tr>
        <th>Автор</th>
        <th>Количество книг</th>
      </tr>
    </thead>
    <tbody>
      <?php foreach ($authors as $author): ?>
      <tr>
        <td><?php echo $author['name'] ?> </td>
        <td><?php echo $author['books'] ?></td>
      </tr>
      <?php endforeach ?>

    </tbody>
  </table>
</div>
