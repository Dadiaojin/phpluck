<?php
/**
 * 前端控制器
 */
header('Content-Type:text/html; charset=utf8');
//载入数据库操作类

require './framework/framework.class.php';
$app = new framework();
$app->runApp();

?>
