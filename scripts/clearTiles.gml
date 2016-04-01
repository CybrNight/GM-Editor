for (var a = 0; a < ds_list_size(global.tileBackground); a++){
    var tiles = tile_get_ids();
    for (var a = 0; a < array_length_1d(tiles); a++){
        tile_delete(tiles[a]);
    }
}

ds_list_clear(global.tileBackground);
ds_list_clear(global.tileL);
ds_list_clear(global.tileR);
ds_list_clear(global.tileW);
ds_list_clear(global.tileH);
ds_list_clear(global.tileX);
ds_list_clear(global.tileY);
ds_list_clear(global.tileDepth);
