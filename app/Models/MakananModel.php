<?php

namespace App\Models;

use CodeIgniter\Model;

class MakananModel extends Model
{
    protected $table = 'makanan';
    protected $primaryKey = 'Id';
    protected $allowedFields = ['JenisBarang', 'Kualitas'];
}
