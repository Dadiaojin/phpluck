<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


$data = array(
    '0' => 1 ,
    '1' => 1 ,
    '2' => 16 ,
    '3' => 16,
    '4' => 16,
    '5' => 16,
    '6' => 16,
    '7' => 18
);

$lucknum = randomSelect( $data ); 

echo $lucknum;


function randomSelect( &$array ){
    $datas = $array ;
    if( !is_array($datas) || count($datas) == 0 )
        return ;
    asort($datas); //按照大小排序
    $random = rand(1,100);
    $sum = 0 ;
   
    $flag = '';
    foreach($datas as $key => $data ){
        $sum += $data ;
        if( $random <= $sum ){
            $flag = $key;
            break ;
        }
    }
    if( $flag == '' ){ // 如果传递进来的值的和小于100 ，则取概率最大的。
        $keys = array_keys($datas);
        $flag = $keys[count($keys) - 1] ;
    }
    return $flag;
}


?>