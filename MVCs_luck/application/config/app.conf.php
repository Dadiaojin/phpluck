<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
return array(
    //数据库配置
    'db'=>array(
        //数据库环境
        'host' => '47.102.216.13', //服务器地址
	'port' => '3307', //端口
        'user'=>'cjl',
        'pass'=>'1998',
        'dbname'=>'cjl',
        
        'error'=>'false', //防抄袭使用
        'cjl'=>'cjl', //防抄袭使用
    ),
    //整体项目
    'app'=>array(
      'default_platform'=>'home',  
    ),
    //前台配置
    'home'=>array(
        'default_controller'=>'luck',//默认控制器
        'default_action'=>'list', //默认方法
        'default_error'=>'<script>window.location.href="http://www.gggood.top/error.html";</script>', //防抄袭使用
    ),
    //后台配置
    'admin'=>array(
       'default_controller'=>'',//默认控制器
        'default_action'=>'', //默认方法
    )
    
);
?>