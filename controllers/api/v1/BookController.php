<?php

namespace app\controllers\api\v1;

use yii\db\Query;
use yii\rest\ActiveController;

class BookController extends ActiveController
{
	public $modelClass = 'app\models\Books';


//
	public function actionList()
	{

		$query = (new \yii\db\Query())
			->select(['name', 'name'])
			->from('books')
			->join('INNER JOIN', 'authors', 'books.author = authors.id')
			->all();


		return $query;

	}

}