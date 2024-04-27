<?php 
namespace App\Models;
use CodeIgniter\Model;

class TypeModel extends Model
{
    protected $table      = 'types';
    protected $primaryKey = 'id';

    protected $useAutoIncrement = true;

    protected $returnType     = 'array';
    protected $useSoftDeletes = false;

    // Todas las columnas de la tabla.
    protected $allowedFields = ['name', 'url', 'pokemon_id'];

    protected bool $allowEmptyInserts = false;
    protected $useTimestamps = false;
}