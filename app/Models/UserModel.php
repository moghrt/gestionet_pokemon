<?php 
namespace App\Models;
use CodeIgniter\Model;

class UserModel extends Model{
    public function getUserData($data){
        $user = $this->db->table('users');
        $user->where($data);

        return $user->get()->getResultArray();
    }
}