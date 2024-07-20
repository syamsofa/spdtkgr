<?php

namespace App\Controllers;

use CodeIgniter\RESTful\ResourceController;
use CodeIgniter\API\ResponseTrait;
use App\Models\ArtModel;

class Art extends ResourceController
{
    use ResponseTrait;
    // all users
    public function index()
    {
        $model = new ArtModel();
        $data['art'] = $model->orderBy('Id', 'DESC')->findAll();
        return $this->respond($data);
    }
    
   
}
