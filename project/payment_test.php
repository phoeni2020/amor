<?php 
$curl = curl_init();
$or = time();

 $arr = "https://uat-proxy.aps.iq:5443/rest/register.do?userName=api_alqeitharah&password=123456&
 orderNumber=123456kkk78&amount=500&currency=840&returnUrl=https://www.google.com&failUrl=https://www.aps.iq";
         $data = json_encode($arr);
         curl_setopt_array($curl, array(
         CURLOPT_URL => "$arr",
         CURLOPT_RETURNTRANSFER => true,
         CURLOPT_ENCODING => "",
         CURLOPT_VERBOSE => true,
         CURLOPT_MAXREDIRS => 10,
         CURLOPT_TIMEOUT => 0,
         CURLOPT_FOLLOWLOCATION => true,
         CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
         CURLOPT_CUSTOMREQUEST => "GET",
         CURLOPT_HTTPHEADER => array(
              "Content-Type: application/json",
         ),
        ));
        $response = curl_exec($curl);
        curl_close($curl);
        $data = json_decode($response,true);  
        print_r($data);