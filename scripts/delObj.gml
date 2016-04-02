var xx = argument[0];
var yy = argument[1];

var length = ds_list_size(global.object);

for (var a = 0; a < length; a++){
    var xxx = global.objX[|a];
    var yyy = global.objY[|a];
    
    if (xxx = xx && yyy = yy){
        ds_list_delete(global.object,a);
        ds_list_delete(global.objX,a);
        ds_list_delete(global.objY,a);
        
        position_destroy(xx,yy);
    }
}
