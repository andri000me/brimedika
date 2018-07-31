<?php

function getnama($id)
{
    $ci=& get_instance();
    $q = $ci->db->query("select nmPasien from pasien where idPasien='$id'")->row_array();
    return $q['nmPasien'];
}
?>