<?php

namespace app\modules\admin;

use Yii;
use yii\filters\AccessControl;

/**
 * admin module definition class
 */
class Module extends \yii\base\Module
{
  /**
   * {@inheritdoc}
   */
  public $controllerNamespace = 'app\modules\admin\controllers';

  /**
   * {@inheritdoc}
   */
  public function init()
  {
    parent::init();

    // custom initialization code goes here
  }

  public function behaviors()
  {
    return [
      'assets' => [
        'class' => AccessControl::className(),
        'only' => ['login', 'logout'], // действия в контроллере
        'rules' => [ // правила к действиям
          [
            'allow' => true,
            'actions' => ['login'], // действия в контроллере
            'roles' => ['?'], // Доступ к действиям только для не авторизованных пользователей
          ],
          [
            'allow' => true,
            'actions' => ['logout'], // действия в контроллере
            'roles' => ['admin'], // Доступ к действиям только для авторизованных пользователей
          ],

          // 'allow' => true,
          // 'matchCallback' => function($rule, $action)
          // {
          //   return Yii::$app->user->identity->isAdmin;
          // }
        ]
      ]
    ];
  }

  public function beforeAction($action)
  {

    if (!parent::beforeAction($action))
    {
      return false;
    }

    if (!Yii::$app->user->isGuest)
    {
      return true;
    }
    else
    {
      Yii::$app->getResponse()->redirect(Yii::$app->getHomeUrl());
      //для перестраховки вернем false
      return false;
    }
  }
}
