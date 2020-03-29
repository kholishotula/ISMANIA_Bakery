<?php

use Phalcon\Mvc\Controller;
use Phalcon\Http\Response;
use Phalcon\Mvc\Dispatcher;

class SessionController extends Controller
{
	public function createAction()
	{
		if ($this->cookies->has("remember-KTP")) {
            $ktp = $this->cookies->get("remember-KTP");
            $ktp_num = $ktp->getValue();
            $this->view->remember_ktp = $ktp_num;
        }
        else {
            $this->view->remember_password = '';
        }
        if ($this->cookies->has("remember-password")) {
            $pw = $this->cookies->get("remember-password");
            $password = $pw->getValue();
            $this->view->remember_password = $password;
        }
        else {
            $this->view->remember_password = '';
        }
    }
    
    public function storeAction()
	{
        $username = $this->request->getPost('Member_KTP');
        $password = $this->request->getPost('Member_password');

        $remember = $this->request->getPost('remember');

        $user = Users::findFirst("Member_KTP='$username'");

        if ($user)
        {
            if ($this->security->checkHash($password, $user->Member_password))
            {
                if($user->Member_name == "admin")
                {
                    $this->session->set(
                        'admin',
                        [
                            'id' => $user->Member_KTP,
                            'username' => $user->Member_password,
                        ]
                    );
                }
                else {
                    $this->session->set(
                        'auth',
                        [
                            'id' => $user->Member_KTP,
                            'username' => $user->Member_password,
                        ]
                    );
                }

                if ($remember == "1") {
                    $this->cookies->set(
                        'remember-KTP',
                        $username,
                        time() + 43200
                    );
                    $this->cookies->send();
                    $this->cookies->set(
                        'remember-password',
                        $password,
                        time() + 43200
                    );
                    $this->cookies->send();
                }

                (new Response())->redirect("Home")->send();
            }
            else {
                $this->security->hash(rand());
                ?>
                <script type="text/javascript">
                    alert('Enter the correct username and password');
                    document.location.href="login";
                </script>
                <?php
            }
        }
        else {
            ?>
            <script type="text/javascript">
                alert('Enter the correct username and password');
                document.location.href="login";
            </script>
            <?php
        }
    }
}

?>