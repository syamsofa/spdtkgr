<?php

namespace App\Controllers;

use CodeIgniter\RESTful\ResourceController;
use CodeIgniter\API\ResponseTrait;
use App\Models\MakananModel;

class Makanan extends ResourceController
{
    use ResponseTrait;
    // all users
    public function index()
    {
        $model = new MakananModel();
        $data['makanan'] = $model->orderBy('Id', 'DESC')->findAll();
        return $this->respond($data);
    }
    
   
}
