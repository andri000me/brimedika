<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class DokterM extends CI_Model {

    public function listPasien()
	{
		$data = $this->db->get('pasien');

		return $data->result();
	}
	public function geteditData($table,$id,$where)
	{
		 $this->db->where($where,$id);
	     return $this->db->get($table);
	}
	public function rekamMedis($id)
	{
		$data = $this->db->get_where('rekammedis',array('idPasien'=> $id));

		return $data->result();
	}
	public function addData($data,$table){
		return $this->db->insert($table,$data);


	}
	public function editData($data,$table,$id,$where){
			$this->db->where($where,$id);
		return $this->db->update($table,$data);


	}
}
