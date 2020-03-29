<?php

use Phalcon\Mvc\Controller;
use Phalcon\Http\Response;

class ProfileController extends Controller
{
	
    public function profileAction()
    {
        $id = $this->session->get('auth')['id'];
        $user = Users::findFirst("Member_KTP='$id'");
        $this->view->user = $user;
    }
    public function logoutAction()
	{
		$this->session->destroy();
     	$this->response->redirect();
    }
    public function deleteAction()
	{
        $id = $this->session->get('auth')['id'];
        $this->session->destroy();
        $user = Users::findFirst("Member_KTP='$id'");
        $user_cart = Cart::findFirst("ktp_member='$id'");
        if($user !== false)
        {
            if ($user->delete() === false) {
                ?>
                <script type="text/javascript">
                    alert('Sorry, we can not delete these user right now');
                </script>
                <?php
                $this->response->redirect("Profile");
            } else {
                $user_cart->delete();
                ?>
                <script type="text/javascript">
                    alert('Your account has been deleted');
                </script>
                <?php
                $this->response->redirect();
            }
        }
    }
};

?>