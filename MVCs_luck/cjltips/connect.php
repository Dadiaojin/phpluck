<?php


try{
			//连接信息
			$dsn = "{$this->dbConfig['db']}:host={$this->dbConfig['host']};port={$this->dbConfig['port']};dbname={$this->dbConfig['dbname']};charset={$this->dbConfig['charset']}";
			//实例化PDO
			$this->db = new PDO($dsn,$this->dbConfig['user'],$this->dbConfig['pass']);
                        //var_dump($dsn);
                        $this->db->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);//防SQL注入
			//设定字符集
			$this->db->query("set names {$this->dbConfig['charset']}");
		}catch (PDOException $e){
			//错误提示
                        require 'jm.error.html';
			die("Dadjin:数据库操作失败：{$e->getMessage()}");
		}
?>