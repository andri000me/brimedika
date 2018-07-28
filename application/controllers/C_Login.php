<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class C_login extends CI_Controller {

	public function __construct(){
		 parent::__construct();
		
        if(!isset($_SESSION['username'])){
            redirect('C_Login');
        };
		if($this->session->level == 'Administrasi'){
			redirect('C_Administrasi');
		}else if($this->session->level == 'Dokter'){
			redirect('C_Dokter');
		}
		
	}

	public function index()
	{
		$this->load->view('login');
	}

	public function login(){
		$username = $this->input->post("uname");
		$password = $this->input->post("pass");
		$this->db->where('namaDokter', $username);
        $this->db->where('password', $password);
        $query =  $this->db->get('dokter');
        if($query->num_rows() > 0){
		#	login dokter
        redirect('C_Dokter');
        }else{
        # login administrasi
        $query2 =  $this->db->where('username', $username)->where('password', $password)->get('perawat');
        if($query2->num_rows() > 0 ){
        $row = $query2->row();
        $data = array(
                'logged' => 'y',
                'id_perawat' => $row->idperawat,
                'username' => $row->username,
                'nama' => $row->nama,
                'jabatan' => $row->level,
                'info' => $row->id_perawat,
                'level' => 'Administrasi'
            );
         $this->session->set_userdata($data);

       	redirect('C_Administrasi');
        }else{
       	redirect('C_Login');
        }

        }

	}
	function logout() {
//        destroy session
		$this->session->set_userdata("logged","t");
        $this->session->sess_destroy();
        
//        redirect ke halaman login
        redirect('C_Login');
    }
}
