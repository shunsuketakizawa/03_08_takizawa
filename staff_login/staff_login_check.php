<?php

try
{

$staff_code=$_POST['code'];
$staff_pass=$_POST['pass'];

$staff_code=htmlspecialchars($staff_code,ENT_QUOTES,'UTF-8');
$staff_pass=htmlspecialchars($staff_pass,ENT_QUOTES,'UTF-8');

$staff_pass=md5($staff_pass);

$dsn='mysql:dbname=shop;host=localhost;charset=utf8';
$user='root';
$password='';
$dbh=new PDO($dsn,$user,$password);
$dbh->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

//入力されたスタッフコードと暗号化されたパスワードをデータベースから読み出している
$sql='SELECT name FROM mst_staff WHERE code=? AND password=?'; //andで複数絞り込み条件を書ける
$stmt=$dbh->prepare($sql);
$data[]=$staff_code;
$data[]=$staff_pass;
$stmt->execute($data);

$dbh=null;

$rec=$stmt->fetch(PDO::FETCH_ASSOC);

if($rec==false)
{
    print 'スタッフコードかパスワードが間違っています。<br />';
    print '<a href="staff_login.html">戻る</a>';
}
else{
    //自動で合言葉を決めれる
    session_start();
    //ログインOKという証拠を残す
    $_SESSION['login']=1;
    //スタッフコードと名前を入れておく。
    $_SESSION['staff_code']=$staff_code;
    $_SESSION['staff_name']=$rec['name'];

    header('location:staff_top.php');
    exit();
}

}
catch(Exception $e)
{
    print 'ただいま障害により大変ご迷惑をおかけしております。';
    exit();
}

?>