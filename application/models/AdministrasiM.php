<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class AdministrasiM extends CI_Model {

  public function listPasien()
	{
		$data = $this->db->get('pasien');

		return $data->result();
	}

}

