<?php

namespace App\Controllers;

use CodeIgniter\RESTful\ResourceController;
use CodeIgniter\API\ResponseTrait;
use App\Models\SampelModel;

class Sampel extends ResourceController
{
    use ResponseTrait;
    // all users
    public function index()
    {
        $model = new SampelModel();
        $data['sampel'] = $model->orderBy('Id', 'DESC')->findAll();
        return $this->respond($data);
    }
    // single user
    public function show($id = null)
    {
        $model = new SampelModel();
        $data = $model->where('Id', $id)->first();
        if ($data) {
            return $this->respond($data);
        } else {
            return $this->failNotFound('Data tidak ditemukan.');
        }
    }
    // create
    public function create()
    {
        // echo json_encode(["namapem"=>$this->request->getVar('NamaPemilik'),"nurts"=>$this->request->getVar('Nurts')]);
        $model = new SampelModel();
        $data = [
            'NamaPemilik' => $this->request->getVar('NamaPemilik'),
            'Nurts'  => $this->request->getVar('Nurts'),
        ];
        $model->insert($data);
        $response = [
            'status'   => 201,
            'error'    => null,
            'messages' => [
                'success' => 'Data produk berhasil ditambahkan.'
            ]
        ];
        return $this->respondCreated($response);
    }
    // update
    public function update($id = null)
    {
        print_r($this->request->getVar('NamaPemilik'));
        $model = new SampelModel();
        $id = $this->request->getVar('Id');
        $data = [
            'NamaPemilik' => $this->request->getVar('NamaPemilik'),
            'Nurts'  => $this->request->getVar('Nurts'),
        ];
        $model->update($id, $data);
        $response = [
            'status'   => 200,
            'error'    => null,
            'messages' => [
                'success' => 'Data produk berhasil diubah.'
            ]
        ];
        return $this->respond($response);
    }
}
