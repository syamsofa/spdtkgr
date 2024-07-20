<?php

namespace App\Models;

use CodeIgniter\Model;

class ArtModel extends Model
{
    protected $table = 'art';
    protected $primaryKey = 'Id';
    protected $allowedFields = ['NamaArt', 'Hub'];
}
