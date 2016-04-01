var back = argument[0];
var left = argument[1];
var top = argument[2];
var width = argument[3];
var height = argument[4];
var xx = argument[5];
var yy = argument[6];
var dpth = argument[7];

ds_list_add(global.tileBackground,back);
ds_list_add(global.tileL,left);
ds_list_add(global.tileR,top);
ds_list_add(global.tileW,width);
ds_list_add(global.tileH,height);
ds_list_add(global.tileX,xx);
ds_list_add(global.tileY,yy);
ds_list_add(global.tileDepth,dpth);

tile_add(back,left,top,width,height,xx,yy,dpth);
