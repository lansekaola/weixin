<?php
header("Content-Type:application/json;charset=utf-8");
@$phone=$_REQUEST['phone'];
if(empty($phone)){
    echo '[]';
    return;
}
require("init.php");
$sql="SELECT d.img_sm,d.did,o.oid,o.user_name,o.order_time FROM kf_dish d,kf_order o WHERE phone='$phone' AND d.did=o.did";
$result=mysqli_query($conn,$sql);
$rows=mysqli_fetch_all($result,MYSQLI_ASSOC);
echo json_encode($rows);
?>