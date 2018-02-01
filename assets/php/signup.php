<?php
    session_start();
    $bdd = new PDO($_SESSION['host'], $_SESSION['ndcSQL'], $_SESSION['mdpSQL']);

// La fonction captcha doit etre avant la verification
// Ma clé privée
$secret = "6LelWkMUAAAAAJpR7J1cEWSJ-HDcVCWE7QVlSJHJ";
// Paramètre renvoyé par le recaptcha
$response = $_POST['g-recaptcha-response'];
// On récupère l'IP de l'utilisateur
$remoteip = $_SERVER['REMOTE_ADDR'];

$api_url = "https://www.google.com/recaptcha/api/siteverify?secret="
    . $secret
    . "&response=" . $response
    . "&remoteip=" . $remoteip ;

$decode = json_decode(file_get_contents($api_url), true);

if ($decode['success'] == true) {
    echo 'Cest un humain';
}

else {
    echo 'Cest un robot ou le code de vérification est incorrecte';
}


    
    if(isset($_POST['email']) && isset($_POST['pseudo']) && isset($_POST['MDP'])) {

        if(!testExist('email') && !testExist('pseudo') && $decode['success'] == true) {
            $email = $_POST['email'];

            if (filter_var($email,  FILTER_VALIDATE_EMAIL)) {
                $req = $bdd->prepare('INSERT INTO t_users(pseudo, email, MDP, T_ROLES_idT_ROLES) VALUES(:pseudo, :email, :MDP, :role, :admin)');
                $req->execute(array(

                    'pseudo' => $_POST['pseudo'],
                    'email' => $_POST['email'],
                    'MDP' => $_POST['MDP'],
                    'role' => 1,
                    'admin' => 1,

                ));
                $_SESSION['login'] = true;
                $_SESSION['success'] = true;

                $_SESSION['pseudo'] = $_POST['pseudo'];
                header ('Location: ./login.php');
            }

    }

        }



    header('Location: ./main.php');




    // FONCTION TESTEXIST()
    function testExist($var) {
        $bdd = new PDO($_SESSION['host'], $_SESSION['ndcSQL'], $_SESSION['mdpSQL']);
        $data = $bdd->query('SELECT * FROM t_users');

        $test = false;

        while ($user = $data->fetch()) {
            if($user[$var] == $_POST[$var]) {
                $test = true;
            }
        }

        return $test;
    }


