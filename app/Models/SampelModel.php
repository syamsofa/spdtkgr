<?php

namespace App\Models;

use CodeIgniter\Model;

class SampelModel extends Model
{
    protected $table = 'sampel';
    protected $primaryKey = 'Id';
    protected $allowedFields = ['Prov', 'Kab','Kec', 'Desa','Nurts','NamaPemilik'];
}
