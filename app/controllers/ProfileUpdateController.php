<?php

use Phalcon\Mvc\Controller;
use Phalcon\Http\Response;

class ProfileUpdateController extends Controller
{
	
    public function edit_profileAction()
    {
        $id = $this->session->get('auth')['id'];
        $user = Users::findFirst("Member_KTP='$id'");
        $this->view->user = $user;
    }

    public function editAction()
    {
        $id = $this->session->get('auth')['id'];
        $user = Users::findFirst("Member_KTP='$id'");
        
        $Member_name = $this->request->getPost('Member_name');
		$Member_birthdate = $this->request->getPost('Member_birthdate');
		$Member_gender = $this->request->getPost('Member_gender');
		$Member_address = $this->request->getPost('Member_address');
		$Member_occupation = $this->request->getPost('Member_occupation');
        $Member_telephone = $this->request->getPost('Member_telephone');
        
        $user->Member_name = $Member_name;
        $user->Member_birthdate = $Member_birthdate;
        $user->Member_gender = $Member_gender;
        $user->Member_address = $Member_address;
        $user->Member_occupation = $Member_occupation;
        $user->Member_telephone = $Member_telephone;

        if($user->save())
        {
            ?>
                <script type="text/javascript">
                    alert('Your profile has been updated');
                </script>
			<?php
			$this->response->redirect("Profile");
        }
    }
}