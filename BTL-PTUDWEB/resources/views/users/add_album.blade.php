<!-- thêm album -->
<div class="modal fade" id="myModal" role="dialog">
  <div class="modal-content">
    <div class="modal-header">
      <button type="button" class="close" data-dismiss="modal">&times;</button>
      <h4 class="modal-title">Thêm Album mới</h4>
    </div>
    <div class="modal-body">
      <div class="row row-flex">
        <div class="form-group col-xs-12">
          <div class="col-xs-6">
            <label>Tên Album ảnh</label>
          </div>
          <div class="col-xs-6"> 
            <input class="form-control input-sm" autofocus required ng-maxlength="255">
          </div>
        </div>
        
      </div>
    </div>
    <div class="modal-footer">
      <button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
    </div>
  </div>
</div>
