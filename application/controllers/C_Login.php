<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class C_login extends CI_Controller {

	public function __construct(){
		 parent::__construct();
		
 
		
	}

	public function index()
	{
      
     if($this->session->logged == 'y'){
    if($this->session->level == 'Administrasi'){
            redirect('C_Administrasi');
        }else if($this->session->level == 'Dokter'){
            redirect('C_Dokter');
        };
     } else{
     //redirect('C_login/index');
     }
		$this->load->view('login');
	}

	public function login(){
		$username = $this->input->post("uname");
		$password = $this->input->post("pass");
		$this->db->where('namaDokter', $username);
        $this->db->where('password', $password);
        $query =  $this->db->get('dokter');
        if($query->num_rows() > 0){
          $row = $query->row();
		  $data = array(
                'logged' => 'y',
                'id_dokter' => $row->idDokter,
                'username' => $row->namaDokter,
                'nama' => $row->namaDokter,
                'level' => 'Dokter'
            );
         $this->session->set_userdata($data);
        redirect('C_Dokter');
        }else{
        # login administrasi
        $query2 =  $this->db->where('namaPetAdministrasi', $username)->where('password', $password)->get('petugasadministrasi');
        if($query2->num_rows() > 0 ){
        $row = $query2->row();
        $data = array(
                'logged' => 'y',
                'id_perawat' => $row->idPetAdministrasi,
                'username' => $row->namaPetAdministrasi,
                'nama' => $row->namaPetAdministrasi,
                'jabatan' => $row->hakAkses,
                'info' => $row->idPetAdministrasi,
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
