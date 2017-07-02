<?php
header("Content-Type:application/json;charset=utf-8");
@$id=$_REQUEST['id']or die("{code:-1;msg:'菜品编号是必须的'}");
if(empty($id)){
    echo '[]';
    return;
}
require('init.php');
$sql="SELECT did,name,img_lg,detail,material,price FROM kf_dish WHERE did=$id";
$result=mysqli_query($conn,$sql);
$output=[];
$row=mysqli_fetch_assoc($result);
$output[]=$row;
echo json_encode($output);
?>