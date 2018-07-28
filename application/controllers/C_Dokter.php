<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class C_Dokter extends CI_Controller {

	public function __construct(){
		 parent::__construct();
		
        if(!isset($_SESSION['username'])){
            redirect('C_Login');
        };
		if($this->session->level != 'Dokter'){
			redirect('C_Login');
		};
		
	}

	public function index()
	{
		$this->load->view('administrasi/home');
	}
}