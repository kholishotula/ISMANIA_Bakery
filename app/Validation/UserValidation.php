<?php
namespace App\Validation;

use Phalcon\Validation;
use Phalcon\Validation\Validator\PresenceOf;
use Phalcon\Validation\Validator\Regex;
use Phalcon\Validation\Validator\File as FileValidator;

class UserValidation extends Validation
{
    public function initialize(){

    $this->add(
        'Member_KTP',
        new PresenceOf(
            [
                'message' => 'The KTP number is required',
            ]
        )
    );

    $this->add(
        'Member_KTP',
        new Regex(
            [
                'pattern' => '{16}',
                'message' => 'The KTP number must contain 16 digit',
            ]
        )
    );

    $this->add(
        'Member_name',
        new PresenceOf(
            [
                'message' => 'The name is required',
            ]
        )
    );

    $this->add(
        'Member_name',
        new Regex(
            [
                'pattern' => '\D[^\n\r]',
                'message' => 'The name is not valid',
            ]
        )
    );

    $this->add(
        'Member_birthdate',
        new PresenceOf(
            [
                'message' => 'The birthdate is required',
            ]
        )
    );

    $this->add(
        'Member_gender',
        new PresenceOf(
            [
                'message' => 'The gender is required',
            ]
        )
    );

    $this->add(
        'Member_address',
        new PresenceOf(
            [
                'message' => 'The address is required',
            ]
        )
    );

    $this->add(
        'Member_address',
        new Regex(
            [
                'pattern' => '[^\n\r]',
                'message' => 'The address is not valid',
            ]
        )
    );

    $this->add(
        'Member_occupation',
        new Regex(
            [
                'pattern' => '[^\n\r]\D',
                'message' => 'The occupation is not valid',
            ]
        )
    );

    $this->add(
        'Member_telephone',
        new PresenceOf(
            [
                'message' => 'The telephone is required',
            ]
        )
    );

    $this->add(
        'Member_telephone',
        new Regex(
            [
                'pattern' => '[0-9]{9,13}',
                'message' => 'The telephone is not valid',
            ]
        )
    );

    $this->add(
        'Member_password',
        new PresenceOf(
            [
                'message' => 'The password is required',
            ]
        )
    );

    $this->add(
        'Member_password',
        new Regex(
            [
                'pattern' => '[^_\n\r\s]{8,}',
                'message' => 'Password must contains at least 8 character',
            ]
        )
    );

    $this->add(
        'Member_photo',
        new PresenceOf(
            [
                'message' => 'The photo is required',
            ]
        )
    );

    $this->add(
        'Member_photo',
        new FileValidator(
            [
                "maxSize"              => "2M",
                "messageSize"          => ":field exceeds the max filesize (:max)",
                "allowedTypes"         => [
                    "image/jpeg",
                    "image/png",
                    "image/gif",
                    "image/webm"
                ],
                "messageType"          => "Allowed file types are :types",
            ]
        )
    );
    }
}

?>