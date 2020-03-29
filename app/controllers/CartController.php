<?php

use Phalcon\Mvc\Controller;
use Phalcon\Http\Response;

class CartController extends Controller
{
	public function mycartAction()
	{
		$id = $this->session->get('auth')['id'];
        
        $user = Users::findFirst("Member_KTP='$id'");
        $this->view->user = $user;

        $items = Cart::findFirst("ktp_member='$id'");
        $this->view->list = $items;
    }

    public function editAction()
	{
        $id = $this->session->get('auth')['id'];

        $user_cart = Cart::findFirst("ktp_member='$id'");
        $this->view->list = $user_cart;

        $brownies = $this->request->getPost('brownies');
        $bolu = $this->request->getPost('bolu_zebra');
        $lava = $this->request->getPost('choco_lava');
        $jap = $this->request->getPost('japanese_cheesecake');
        $black = $this->request->getPost('blackforest');
        $roll = $this->request->getPost('roll_cake');
        $jar = $this->request->getPost('cheesecake_jar');
        $tart = $this->request->getPost('tart');
        $tiram = $this->request->getPost('tiramisu');
        $don = $this->request->getPost('donuts');
        $stick = $this->request->getPost('cheese_stick');
        $sobek = $this->request->getPost('roti_sobek');
        $pizza = $this->request->getPost('pizza');
        $moza = $this->request->getPost('mozarella_stick');
        $pisang = $this->request->getPost('roti_pisang');
        $burger = $this->request->getPost('burger');
        $abon = $this->request->getPost('roti_abon');
        $lidah = $this->request->getPost('lidah_kucing');
        $butter = $this->request->getPost('butter_cookies');
        $sagu = $this->request->getPost('kue_sagu');
        $choco = $this->request->getPost('chocochip');
        $semprit = $this->request->getPost('kue_semprit');
        $nastar = $this->request->getPost('kue_nastar');
        $putri = $this->request->getPost('kue_putri');
        $kastengel = $this->request->getPost('kue_kastengel');
        $keciput = $this->request->getPost('kue_keciput');
        $date = $this->request->getPost('order_date');
        
        if($user_cart)
		{
            $user_cart->Total = 0;
			if($brownies > 0) {$user_cart->brownies = $brownies; $user_cart->Total += $brownies*(Product::findFirst("id='1'"))->price;}
			if($bolu > 0) {$user_cart->bolu_zebra = $bolu; $user_cart->Total += $bolu*(Product::findFirst("id='2'"))->price;}
			if($lava > 0) {$user_cart->choco_lava = $lava; $user_cart->Total += $lava*(Product::findFirst("id='4'"))->price;}
			if($jap > 0) {$user_cart->japanese_cheesecake = $jap; $user_cart->Total += $jap*(Product::findFirst("id='5'"))->price;}
			if($black > 0) {$user_cart->blackforest = $black; $user_cart->Total += $black*(Product::findFirst("id='6'"))->price;}
			if($roll > 0) {$user_cart->roll_cake = $roll; $user_cart->Total += $roll*(Product::findFirst("id='7'"))->price;}
			if($jar > 0) {$user_cart->cheesecake_jar = $jar; $user_cart->Total += $jar*(Product::findFirst("id='8'"))->price;}
			if($tart > 0) {$user_cart->tart = $tart; $user_cart->Total += $tart*(Product::findFirst("id='9'"))->price;}
			if($tiram > 0) {$user_cart->tiramisu = $tiram; $user_cart->Total += $tiram*(Product::findFirst("id='10'"))->price;}
			if($don > 0) {$user_cart->donuts = $don; $user_cart->Total += $don*(Product::findFirst("id='11'"))->price;}
			if($stick > 0) {$user_cart->cheese_stick = $stick; $user_cart->Total += $stick*(Product::findFirst("id='12'"))->price;}
			if($sobek > 0) {$user_cart->roti_sobek = $sobek; $user_cart->Total += $sobek*(Product::findFirst("id='13'"))->price;}
			if($pizza > 0) {$user_cart->pizza = $pizza; $user_cart->Total += $pizza*(Product::findFirst("id='14'"))->price;}
			if($moza > 0) {$user_cart->mozarella_stick = $moza; $user_cart->Total += $moza*(Product::findFirst("id='15'"))->price;}
			if($pisang > 0) {$user_cart->roti_pisang = $pisang; $user_cart->Total += $pisang*(Product::findFirst("id='16'"))->price;}
			if($burger > 0) {$user_cart->burger = $burger; $user_cart->Total += $burger*(Product::findFirst("id='17'"))->price;}
			if($abon > 0) {$user_cart->roti_abon = $abon; $user_cart->Total += $abon*(Product::findFirst("id='18'"))->price;}
			if($lidah > 0) {$user_cart->lidah_kucing = $lidah; $user_cart->Total += $lidah*(Product::findFirst("id='19'"))->price;}
			if($butter > 0) {$user_cart->butter_cookies = $butter; $user_cart->Total += $butter*(Product::findFirst("id='20'"))->price;}
			if($sagu > 0) {$user_cart->kue_sagu = $sagu; $user_cart->Total += $sagu*(Product::findFirst("id='21'"))->price;}
			if($choco > 0) {$user_cart->chocochip = $choco; $user_cart->Total += $choco*(Product::findFirst("id='22'"))->price;}
			if($semprit > 0) {$user_cart->kue_semprit = $semprit; $user_cart->Total += $semprit*(Product::findFirst("id='23'"))->price;}
			if($nastar > 0) {$user_cart->kue_nastar = $nastar; $user_cart->Total += $nastar*(Product::findFirst("id='24'"))->price;}
			if($putri > 0) {$user_cart->kue_putri = $putri; $user_cart->Total += $putri*(Product::findFirst("id='25'"))->price;}
			if($kastengel > 0) {$user_cart->kastengel = $kastengel; $user_cart->Total += $kastengel*(Product::findFirst("id='26'"))->price;}
            if($keciput > 0) {$user_cart->kue_keciput = $keciput; $user_cart->Total += $keciput*(Product::findFirst("id='28'"))->price;}
            $user_cart->order_date = $date;

            if($user_cart->save())
            {
                ?>
                    <script type="text/javascript">
                        alert('Your shopping cart has been updated');
                        document.location.href="MyCart";
                    </script>
                <?php
            }
		}
    }
    
    public function clearAction()
    {
        $id = $this->session->get('auth')['id'];
        $items = Cart::findFirst("ktp_member='$id'");

        $items->order_date = NULL;
        $items->brownies = 0;
        $items->bolu_zebra = 0;
        $items->choco_lava = 0;
        $items->japanese_cheesecake = 0;
        $items->blackforest = 0;
        $items->roll_cake = 0;
        $items->cheesecake_jar = 0;
        $items->tart = 0;
        $items->tiramisu = 0;
        $items->donuts = 0;
        $items->cheese_stick = 0;
        $items->roti_sobek = 0;
        $items->pizza = 0;
        $items->mozarella_stick = 0;
        $items->roti_pisang = 0;
        $items->burger = 0;
        $items->roti_abon = 0;
        $items->lidah_kucing = 0;
        $items->butter_cookies = 0;
        $items->kue_sagu = 0;
        $items->chocochip = 0;
        $items->kue_semprit = 0;
        $items->kue_nastar = 0;
        $items->kue_putri = 0;
        $items->kue_kastengel = 0;
        $items->kue_keciput = 0;
        $items->Total = 0;

        if($items->save())
        {
            ?>
                <script type="text/javascript">
                    alert('Your shopping cart has been cleared');
                    document.location.href="MyCart";
                </script>
			<?php
        }
    }

    public function doneAction()
	{
        $random = new \Phalcon\Security\Random();
        $this->view->random = $random;

        $id = $this->session->get('auth')['id'];
        $items = Cart::findFirst("ktp_member='$id'");

        if ($items->order_date == NULL)
        {
            $this->response->redirect("MyCart");
        }
        if ($items->Total == 0)
        {
            $this->response->redirect("MyCart");
        }
        $items->order_date = NULL;
        $items->brownies = 0;
        $items->bolu_zebra = 0;
        $items->choco_lava = 0;
        $items->japanese_cheesecake = 0;
        $items->blackforest = 0;
        $items->roll_cake = 0;
        $items->cheesecake_jar = 0;
        $items->tart = 0;
        $items->tiramisu = 0;
        $items->donuts = 0;
        $items->cheese_stick = 0;
        $items->roti_sobek = 0;
        $items->pizza = 0;
        $items->mozarella_stick = 0;
        $items->roti_pisang = 0;
        $items->burger = 0;
        $items->roti_abon = 0;
        $items->lidah_kucing = 0;
        $items->butter_cookies = 0;
        $items->kue_sagu = 0;
        $items->chocochip = 0;
        $items->kue_semprit = 0;
        $items->kue_nastar = 0;
        $items->kue_putri = 0;
        $items->kue_kastengel = 0;
        $items->kue_keciput = 0;
        $items->Total = 0;

        $items->save();
    }
};

?>