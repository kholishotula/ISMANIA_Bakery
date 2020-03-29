<?php

use Phalcon\Mvc\Controller;
use Phalcon\Http\Response;
use Phalcon\Mvc\Dispatcher;

use Phalcon\Http\Request\File;

use App\Validation\UserValidation;

class UserController extends Controller
{
	public function initialize()
	{
		$this->messages = [
			'Member_KTP' => '',
			'Member_name' => '',
			'Member_birthdate' => '',
			'Member_gender' => '',
			'Member_address' => '',
			'Member_occupation' => '',
			'Member_telephone' => '',
			'Member_password' => '',
			'Member_photo' => '',
		];
	}
	public function createAction()
	{
		$this->view->messages = $this->messages;
	}

	public function storeAction()
	{	
		$val = new UserValidation();

		$messages = $val->validate($_POST);

		if (count($messages)) {
			foreach ($messages as $m) {
				$this->messages[$m->getField()] = $m;
			}
			$this->dispatcher->forward(['action'=>'create']);
		}
			$membership = new Users();
			$list_items = new Cart();


			$Member_ID = $this->request->getPost('Member_ID');
			$Member_KTP = $this->request->getPost('Member_KTP');
			$Member_name = $this->request->getPost('Member_name');
			$Member_birthdate = $this->request->getPost('Member_birthdate');
			$Member_gender = $this->request->getPost('Member_gender');
			$Member_address = $this->request->getPost('Member_address');
			$Member_occupation = $this->request->getPost('Member_occupation');
			$Member_telephone = $this->request->getPost('Member_telephone');
			$Member_password = $this->request->getPost('Member_password');
			
			$Member_photo = file_get_contents($_FILES['Member_photo']['tmp_name']);
			$file = base64_encode($Member_photo);

			$list_items->ktp_member = $Member_KTP;
			$membership->Member_ID = $Member_ID;
			$membership->Member_KTP = $Member_KTP;
			$membership->Member_name = $Member_name;
			$membership->Member_birthdate = $Member_birthdate;
			$membership->Member_gender = $Member_gender;
			$membership->Member_address = $Member_address;
			$membership->Member_occupation = $Member_occupation;
			$membership->Member_telephone = $Member_telephone;
			$membership->Member_password = $this->security->hash($Member_password);
			$membership->Member_photo = $file;

			if ($membership->save())
			{
				if ($list_items->save())
				{
					?>
					<script type="text/javascript">
						alert('Registration successful');
					</script>
					<?php
					$this->response->redirect("login");
				}
			}
			else {
				?>
					<script type="text/javascript">
						alert('Error register, please input another data');
					</script>
				<?php
			}
	}
}

?>