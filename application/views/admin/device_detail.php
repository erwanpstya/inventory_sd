<?php 
    $devices    = $this->db->get_where('device' , array('equipment_id' => $param2) )->result_array();
    foreach ( $devices as $row):
?>

<h3 class="text-center">Equipment Details</h3>
<table class="table .table-responsive">
  <tr>
    <td>Equipment Type</td>
    <td>:</td>
    <td><?php echo $this->common_model->get_category_name($row['category_id']);?></td>
  </tr>
  <tr>
    <td>Equipment Name</td>
    <td>:</td>
    <td><?php echo $row['equipment_name'];?></td>
  </tr>
  <tr>
    <td>Tanggal Pembelian</td>
    <td>:</td>
    <td><?php echo $row['purchase_date'];?></td>
  </tr>
  <tr>
    <td>Nomor SPK</td>
    <td>:</td>
    <td><?php echo $row['no_spk'];?></td>
  </tr>
  <tr>
    <td>Nomor Referensi</td>
    <td>:</td>
    <td><?php echo $row['no_referensi'];?></td>
  </tr>
  <tr>
  <tr>
    <td>Nomor SPK</td>
    <td>:</td>
    <td><?php echo $row['no_spk'];?></td>
  </tr>
  <tr>
    <td>Brand</td>
    <td>:</td>
    <td><?php echo $this->common_model->get_brand_name($row['brand_id']);?></td>
  </tr>
  <tr>
    <td>Model</td>
    <td>:</td>
    <td><?php echo $row['model'];?></td>
  </tr>
  <tr>
    <td>Supplier</td>
    <td>:</td>
    <td><?php echo $this->common_model->get_supplier_name($row['supplier_id']);?></td>
  </tr>
  <tr>
    <td>User/Location</td>
    <td>:</td>
    <td><?php echo $row['issue_to'];?></td>
  </tr>
</table>
<?php endforeach; ?>
</form>

<!-- submit -->

<div class="form-group">
  <div class="col-sm-offset-3 col-sm-9 m-t-15">
    <button  class="btn btn-default m-l-5" data-dismiss="modal"> Close </button>
  </div>
</div>

<!-- end submit --> 

