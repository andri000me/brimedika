<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class C_Administrasi extends CI_Controller {

	public function __construct(){
		 parent::__construct();
		$this->load->model('AdministrasiM', 'yeah');
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
	public function addPasien(){
		$this->load->view('administrasi/tambah_pasien');	
	}
	public function editPasien(){
		$id = $this->uri->segment(3);
		$data['pasien'] = $this->yeah->geteditData('pasien',$id,'idPasien')->result();
		$this->load->view('administrasi/edit_pasien',$data);	
	}
	public function editRekam(){
		$id = $this->uri->segment(3);
		$data['rekam'] = $this->yeah->geteditData('rekammedis',$id,'noRM')->result();
		$this->load->view('administrasi/edit_rekam',$data);	
	}
	public function addRekam(){
		$this->load->view('administrasi/tambah_rekam');	
	}


	public function tambah(){
		$data = array(
		'nmPasien'=> html_escape($this->input->post('nama')),
		'umur' => html_escape($this->input->post('umur')),
		'gender' => html_escape($this->input->post('jeniskel')),
		'alamat' => html_escape($this->input->post('alamat')),
		'noTelp' => html_escape($this->input->post('nomor')),
		'tempatLahir' =>  html_escape($this->input->post('tempat')),
		'tglLahir' =>  html_escape($this->input->post('tanggal')),
		'pekerjaan' =>  html_escape($this->input->post('pekerjaan')),
		);
		if($this->yeah->editData($data,'pasien',$id,'idPasien')){
			$message = array('message'=>'Data Pasien berhasil ditambah', 'class'=>'alert alert-primary');
			$this->session->set_flashdata('item', $message);
		}else{
			$message = array('message'=>'Data Pasien gagal ditambahkan', 'class'=>'alert alert-danger');
			$this->session->set_flashdata('item', $message);			
		}
		redirect('C_Administrasi/pasien');

	}

	public function prosesEditP(){

		$data = array(
		'nmPasien'=> html_escape($this->input->post('nama')),
		'umur' => html_escape($this->input->post('umur')),
		'gender' => html_escape($this->input->post('jeniskel')),
		'alamat' => html_escape($this->input->post('alamat')),
		'noTelp' => html_escape($this->input->post('nomor')),
		'tempatLahir' =>  html_escape($this->input->post('tempat')),
		'tglLahir' =>  html_escape($this->input->post('tanggal')),
		'pekerjaan' =>  html_escape($this->input->post('pekerjaan')),
		);
		$id = $this->input->post('idp');
		if($this->yeah->addData($data,'pasien')){
			$message = array('message'=>'Data Pasien berhasil diubah', 'class'=>'alert alert-primary');
			$this->session->set_flashdata('item', $message);
		}else{
			$message = array('message'=>'Data Pasien gagal diubah', 'class'=>'alert alert-danger');
			$this->session->set_flashdata('item', $message);			
		}
		redirect('C_Administrasi/pasien');

	}
	public function prosesEditR(){

		$data = array(
		'tglPemeriksaan'=> html_escape($this->input->post('tanggal')),
		'anamnesa' => html_escape($this->input->post('ana')),
		'diagnosa' => html_escape($this->input->post('diagnosa')),
		'terapi' => html_escape($this->input->post('terapi')),
		'ketTerapi' => html_escape($this->input->post('detail')),
		'idPasien' =>  html_escape($this->input->post('idp')),
		);
		$id = $this->input->post('idr');
		$id2 = $this->input->post('idp');
		if($this->yeah->editData($data,'rekammedis',$id,'noRM')){
			$message = array('message'=>'Data Rekam Medis berhasil diubah', 'class'=>'alert alert-primary');
			$this->session->set_flashdata('item', $message);
		}else{
			$message = array('message'=>'Data  Rekam Medis gagal diubah', 'class'=>'alert alert-danger');
			$this->session->set_flashdata('item', $message);			
		}
		redirect('C_Administrasi/rekamMedis/'.$id2);

	}

	public function hapusPasien(){
		$id=$this->uri->segment(3);
		$this->db->where('idPasien',$id);
		$this->db->delete('pasien');
		redirect('C_Administrasi/pasien');
	}
	public function hapusRekam(){
		$id = $this->uri->segment(3);
		$id2 = $this->uri->segment(4);
		$this->db->where('noRM',$id);
		$this->db->delete('rekammedis');
		redirect('C_Administrasi/rekamMedis/'.$id2);
	}
	public function rekamMedis(){
		$idpasien = $this->uri->segment(3);
		$data['rekam'] = $this->yeah->rekamMedis($idpasien);
		$this->load->view('administrasi/rekammedis',$data);	

	}
	public function tambah_rekam(){
		$data = array(
		'tglPemeriksaan'=> html_escape($this->input->post('tanggal')),
		'anamnesa' => html_escape($this->input->post('ana')),
		'diagnosa' => html_escape($this->input->post('diagnosa')),
		'terapi' => html_escape($this->input->post('terapi')),
		'ketTerapi' => html_escape($this->input->post('det')),
		'idPasien' =>  html_escape($this->input->post('id')),
		);
		if($this->yeah->addData($data,'rekammedis')){
			$message = array('message'=>'Data Rekam Medis berhasil ditambah', 'class'=>'alert alert-primary');
			$this->session->set_flashdata('item', $message);
		}else{
			$message = array('message'=>'Data Rekam Medis gagal ditambahkan', 'class'=>'alert alert-danger');
			$this->session->set_flashdata('item', $message);			
		}
		redirect('C_Administrasi/rekamMedis/'.html_escape($this->input->post('id')));

	}
}