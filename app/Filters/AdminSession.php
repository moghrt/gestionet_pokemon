<?php

namespace App\Filters;

use CodeIgniter\Filters\FilterInterface;
use CodeIgniter\HTTP\RequestInterface;
use CodeIgniter\HTTP\ResponseInterface;

class AdminSession implements FilterInterface
{
    // OJO. Dalo de alta en app/config/filters.
    public function before(RequestInterface $request, $arguments = null)
    {
        if(!session('type') == 'admin')
        {
            return redirect()->to(base_url('/'));
        }
    }

    public function after(RequestInterface $request, ResponseInterface $response, $arguments = null)
    {
        // Do something here
    }
}