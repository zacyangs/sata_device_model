class frame_info_struct extends uvm_sequence_item;


    function new(string name = "frame_info_struct");
        super.new(name);
    endfunction
endclass

class h2d_fis extends frame_info_struct;
    function new(string name = "h2d_fis");
        super.new(name);
    endfunction

    byte        fis_type = 8'h27 ;
    bit [31:0]  rsv      = 32'b0 ;
    bit         c        = 1'b1  ;
    bit [7:0]   cmd              ;
    bit [15:0]  feature  = 16'b0 ;
    bit [47:0]  lba              ;
    bit [7:0]   device   = 8'he0 ;
    bit [15:0]  count            ;
    bit [7:0]   control  = 8'h0  ;

    `uvm_object_utils_begin
        `uvm_field_int ( fis_type      , UVM_ALL_ON);
        `uvm_field_int ( rsv[6:0]      , UVM_ALL_ON);
        `uvm_field_int ( c             , UVM_ALL_ON);
        `uvm_field_int ( cmd           , UVM_ALL_ON);
        `uvm_field_int ( feature[7:0]  , UVM_ALL_ON);
        `uvm_field_int ( lba[23:0]     , UVM_ALL_ON);
        `uvm_field_int ( device        , UVM_ALL_ON);
        `uvm_field_int ( lba[47:24]    , UVM_ALL_ON);
        `uvm_field_int ( feature[15:8] , UVM_ALL_ON);
        `uvm_field_int ( count         , UVM_ALL_ON);
        `uvm_field_int ( rsv[7:0]      , UVM_ALL_ON);
        `uvm_field_int ( control       , UVM_ALL_ON);
        `uvm_field_int ( rsv           , UVM_ALL_ON);
    `uvm_object_utils_end
endclass

class d2h_fis extends frame_info_struct;
    function new(string name = "h2d_fis");
        super.new(name);
    endfunction

    byte        fis_type = 8'h34 ;
    bit [31:0]  rsv      = 32'b0 ;
    bit         interrupt= 1'b1  ;
    bit [7:0]   cmd              ;
    bit [15:0]  feature  = 16'b0 ;
    bit [47:0]  lba              ;
    bit [7:0]   device   = 8'he0 ;
    bit [15:0]  count            ;
    bit [7:0]   control  = 8'h0  ;

    `uvm_object_utils_begin
        `uvm_field_int ( fis_type      , UVM_ALL_ON);
        `uvm_field_int ( rsv[6:0]      , UVM_ALL_ON);
        `uvm_field_int ( c             , UVM_ALL_ON);
        `uvm_field_int ( cmd           , UVM_ALL_ON);
        `uvm_field_int ( feature[7:0]  , UVM_ALL_ON);
        `uvm_field_int ( lba[23:0]     , UVM_ALL_ON);
        `uvm_field_int ( device        , UVM_ALL_ON);
        `uvm_field_int ( lba[47:24]    , UVM_ALL_ON);
        `uvm_field_int ( feature[15:8] , UVM_ALL_ON);
        `uvm_field_int ( count         , UVM_ALL_ON);
        `uvm_field_int ( rsv[7:0]      , UVM_ALL_ON);
        `uvm_field_int ( control       , UVM_ALL_ON);
        `uvm_field_int ( rsv           , UVM_ALL_ON);
    `uvm_object_utils_end
endclass
class h2d_fis extends frame_info_struct;
endclass
class h2d_fis extends frame_info_struct;
endclass
class h2d_fis extends frame_info_struct;
endclass
class h2d_fis extends frame_info_struct;
endclass
