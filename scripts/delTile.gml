var layer = argument[0];
var xx = argument[1];
var yy = argument[2];

for (var a = 0; a < tile_get_count(); a++){
    var tile = tile_layer_find(layer,xx,yy);
    
    if (tile_exists(tile)){
        ds_list_delete(global.tileBackground,a);
        ds_list_delete(global.tileL,a);
        ds_list_delete(global.tileR,a);
        ds_list_delete(global.tileW,a);
        ds_list_delete(global.tileH,a);
        ds_list_delete(global.tileX,a);
        ds_list_delete(global.tileY,a);
        ds_list_delete(global.tileDepth,a);
    }
}
