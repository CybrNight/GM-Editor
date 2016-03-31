var xx = argument[0];
var yy = argument[1];

var length = ds_list_size(global.object);

for (var a = 0; a < length; a++){
    var xxx = global.xx[|a];
    var yyy = global.yy[|a];
    
    if (xxx = xx && yyy = yy){
        ds_list_delete(global.object,a);
        ds_list_delete(global.xx,a);
        ds_list_delete(global.yy,a);
        
        position_destroy(xx,yy);
    }
}
