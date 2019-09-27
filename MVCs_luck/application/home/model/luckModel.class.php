<?php
/**
 * student表的操作类，继承基础模型类
 */
class luckModel extends model{
    //表名
    private $biao="comment";

    /*表所有东西(可扩展)*/   
    public function add_getALL($sql){
    if(!empty($sql)){
    $data= $this->db-> fetchALL("select * from `$this->biao` $sql;");
    return $data;
    } else {
         $data= $this->db-> fetchALL("select * from `$this->biao`");
         return $data;
    }
  
    }
    
    public function insert(){
        //接收数据
        $data['poster'] =htmlspecialchars($_POST['poster']);
        $data['mail'] = htmlspecialchars($_POST['mail']);
        $data['comment'] =  htmlspecialchars($_POST['comment']) ;
        //为其他字段赋值
        $data['reply'] = '';
        $date=date('Y-m-d H:i:s');
        $data['date'] = $date;
        $data['ip'] = $_SERVER["REMOTE_ADDR"];
        //拼接sql语句
        $sql = "insert into `$this->biao` set ";
        //前方高能
        foreach ($data as $k=>$v){
            $sql.="`$k`='$v',";
            
        }
        $sql = rtrim($sql,',');
        var_dump($sql);
        //执行SQL并返回
        return $this->db->query($sql);
    }
    
    /*留言列表*/
    public function getALL($limit){
        //获取排序参数
        $order='';
        if(isset($_GET['sort']) && $_GET['sort']=='desc'){
            $order = 'order by id desc';
        }
        
        //拼接sql
       
        return $this->add_getALL("$order limit $limit;");
    }
    
    
    /*留言总数*/
    public function getNumber(){
        $sql="select count(*) from $this->biao";
        $data = $this->db->fetchNUM($sql);
        return $data[0];
    }
    

}  
