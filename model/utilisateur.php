


<?php

class Utilisateur {

    private $idUser;
    private $username;
    private $email;
    private $password;


    public function __construct($idUser, $username, $email, $password)
    {
        $this->idUser = $idUser;
        $this->username = $username;
        $this->email = $email;
        $this->password = $password;


    }



    public function getIdUser()
    {
        return $this->idUser;
    }

   
    public function setIdUser($idUser)
    {
        $this->idUser = $idUser;

        return $this;
    }

    
    public function getUsername()
    {
        return $this->username;
    }

   
    public function setUsername($username)
    {
        $this->username = $username;

        return $this;
    }

  
    public function getEmail()
    {
        return $this->email;
    }

   
    public function setEmail($email)
    {
        $this->email = $email;

        return $this;
    }

  
    public function getPassword()
    {
        return $this->password;
    }

  
    
    public function setPassword($password)
    {
        $this->password = $password;

        return $this;
    }
}
?>