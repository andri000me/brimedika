<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class C_Administrasi extends CI_Controller {

	public function __construct(){
		 parent::__construct();
		
        if(!isset($_SESSION['username'])){
            redirect('C_Login');
        };
		if($this->session->level != 'Administrasi'){
			redirect('C_Login');
		};
		$this->load->model('AdministrasiM', 'yeah');
		
	}

	public function index()
	{
		$this->load->view('administrasi/home');
	}

	public function Pasien(){
		$data['pasien'] = $this->yeah->listPasien();
		$this->load->view('administrasi/pasien',$data);	
	}
}