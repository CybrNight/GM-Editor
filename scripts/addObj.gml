var xx = argument[0];
var yy = argument[1];
var obj = argument[2];

ds_list_add(global.objX,xx);
ds_list_add(global.objY,yy);
ds_list_add(global.object,obj);

instance_create(xx,yy,obj);
