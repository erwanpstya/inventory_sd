<?php if (! defined ('BASEPATH')) exit ('no direct access allowed');

class backup extends CI_controller 
{
	public function backupdb ()
	{
		//load class utility from database
	$this->load->dbutil();

		//aturan ketika terdownload
	$aturan=array (
		'format'	=>'zip'
		'filename'	=> 'inventory_vsi.sql'
	);
	
	$backup = & $this->dbutil->backup($aturan);
	
	//nama database sudah ada tanggal download
	$nama_database = 'backup-on-'. date ("Y-m-d-H-i-s").'.zip';
	$simpan = '/backup'.$nama_database;


	$this->load->helper('file');
	write_file($simpan, $backup);

	$this->load->helper('download');
	force_download($nama_database, $backup);
	}
}