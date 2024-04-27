<?php

namespace App\Database\Seeds;

use CodeIgniter\Database\Seeder;

class User extends Seeder
{
    public function run()
    {
        $user = "admin";
        $password = password_hash("1234567890", PASSWORD_DEFAULT);
        $type = "admin";
        $data = [
            'user' => $user,
            'password' => $password,
            'type' => $type,
        ];

        // Using Query Builder
        $this->db->table('users')->insert($data);
    }
}
