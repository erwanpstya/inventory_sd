<?php 
    $devices    = $this->db->get_where('device' , array('equipment_id' => $param2) )->result_array();
    foreach ( $devices as $row);?>
<?php echo form_open(base_url() . 'index.php?admin/device/update/'.$param2 , array('class' => 'form-horizontal group-border-dashed', 'enctype' => 'multipart/form-data'));?>

<h4 class="text-center">Update Informasi Equipment</h4>
<hr>
<div class="form-group">
  <label class="col-sm-3 control-label">Kategori Equipment</label>
  <div class="col-sm-6 ">
    <select  class="form-control select2"  name="category_id" >
      <?php
        $category = $this->db->get('category')->result_array();
        foreach ($category  as $category):
      ?>
      <option value="<?php echo $category['category_id']; ?>"
      <?php if($category['category_id']==$row['category_id']){echo 'selected'; }?>>
      <?php echo $category['category_name'];?></option>
      <?php endforeach;?>
    </select>
  </div>
  <!-- End col-6 --> 
</div>
<!-- end form -group -->

<div class="form-group">
  <label class="col-sm-3 control-label">Equipment Name</label>
  <div class="col-sm-6">
    <input type="text"  name="equipment_name"
    value="<?php echo $row['equipment_name'];?>"
    class="form-control" required placeholder="Masukkan Nama Barang" />
  </div>
  <!-- End col-6 --> 
</div>
<!-- end form -group -->

<div class="form-group">
  <label class="col-sm-3 control-label">Deskripsi Barang</label>
  <div class="col-sm-6">
    <input type="text"  name="description" 
    value="<?php echo $row['description'];?>"
    class="form-control"  placeholder="Masukkan Deskripsi Equipment" />
  </div>
  <!-- End col-6 --> 
</div>
<!-- end form -group -->

<div class="form-group">
  <label class="col-sm-3 control-label">Merk</label>
  <div class="col-sm-6 ">
    <select  class="form-control select2"  name="brand_id" >
      <?php
        $brands = $this->db->get('brand')->result_array();
        foreach ($brands  as $brand):
      ?>
      <option value="<?php echo $brand['brand_id']; ?>">
      <?php echo $brand['brand_name'];?></option>
      <?php endforeach;?>
    </select>
  </div>
  <!-- End col-6 --> 
</div>
<!-- end form -group -->

<div class="form-group">
  <label class="col-sm-3 control-label">Model</label>
  <div class="col-sm-6">
    <input type="text"  name="model" 
    value="<?php echo $row['model'];?>"
    class="form-control"  placeholder="Masukkan model/tipe" />
  </div>
  <!-- End col-6 --> 
</div>
<!-- end form -group -->

<!-- <div class="form-group">
  <label class="col-sm-3 control-label">Supplier</label>
  <div class="col-sm-6 ">
    <select  class="form-control select2"  name="supplier_id" >
      <option>Supplier</option>
      <?php
        $suppliers = $this->db->get('supplier')->result_array();
        foreach ($suppliers  as $supplier):
      ?>
      <option value="<?php echo $supplier['supplier_id']; ?>"> <?php echo $supplier['supplier_name'];?></option>
      <?php endforeach;?>
    </select>
  </div>
  <!-- End col-6 --> 
</div> -->
<!-- end form -group -->

<div class="form-group">
  <label class="col-sm-3 control-label">Nomor SPK</label>
  <div class="col-sm-6">
    <input type="text"  name="no_spk" 
    value="<?php echo $row['no_spk'];?>"
    class="form-control" required placeholder="Masukkan Nomor SPK" />
  </div>
  <!-- End col-6 --> 
</div>
<!-- end form -group -->


<div class="form-group">
  <label class="col-sm-3 control-label">Nomor Referensi</label>
  <div class="col-sm-6">
    <input type="text"  name="no_referensi"
    value="<?php echo $row['no_referensi'];?>"
    class="form-control" required placeholder="Masukkan Nomor Referensi" />
  </div>
  <!-- End col-6 --> 
</div>
<!-- end form -group -->

<div class="form-group">
  <label class="col-sm-3 control-label">Tanggal Pembelian</label>
  <div class="col-sm-6">
    <div class="input-group">
      <input type="text" name="purchase_date" id="purchase_date" type="date"
      value="<?php echo $row['purchase_date'];?>"
      class="form-control" placeholder="Enter purchase date" required>
      <span class="input-group-addon bg-custom b-0 text-white"><i class="fa fa-calendar" aria-hidden="true"></i></span> </div>
    <!-- input-group --> 
  </div>
  <!-- End col-6 --> 
</div>
<!-- end form -group -->
<!-- 
<div class="form-group">
  <label class="col-sm-3 control-label">Warranty Duration</label>
  <div class="col-sm-6 ">
    <select  class="form-control select2"  name="warranty_duration" >
      <option value="30">1 Month</option>
      <option value="90">3 Month</option>
      <option value="180">6 Month</option>
      <option value="365" selected>1 Year</option>
      <option value="548">1.5 Year</option>
      <option value="730">2 Year</option>
      <option value="1095">3 Year</option>
      <option value="1460">4 Year</option>
      <option value="1825">5 Year</option>
      <option value="2920">8 Year</option>
      <option value="3650">10 Year</option>
    </select>
  </div>
  <!-- End col-6 --> 
</div> -->
<!-- end form -group -->

<div class="form-group">
  <label class="col-sm-3 control-label">Lokasi user</label>
  <div class="col-sm-6">
    <input type="text"  name="issue_to" 
    value="<?php echo $row['issue_to'];?>"
    class="form-control"  placeholder="Masukkan Lokasi User" />
  </div>
  <!-- End col-6 --> 
</div>
<!-- end form -group -->

<div class="form-group">
  <div class="col-sm-offset-3 col-sm-9 m-t-15">
    <button type="submit" class="btn btn-success waves-effect"> Save </button>
    <button type="" class="btn btn-default m-l-5 waves-effect" data-dismiss="modal"> Close </button>
  </div>
  <!-- End col-6 --> 
</div>
<!-- end form -group -->
</form>
<script>
        jQuery(document).ready(function() {
          $(".select2").select2();
          $('form').parsley();
          $('#purchase_date').datepicker({
                  autoclose: true,
                  todayHighlight: true
                });                               

          });
</script>