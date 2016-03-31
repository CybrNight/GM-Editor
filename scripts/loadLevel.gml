var name = argument0;

if (file_exists(name)){
    global.loadedLevel = name;
}else{
    show_message(name+' Does Not Exist');
    loadLevel(global.loadedLevel);
    exit;
}

ds_list_clear(global.object);
ds_list_clear(global.xx);
ds_list_clear(global.yy);

with (obj_parMarker) instance_destroy();

ini_open(name);

var length = ini_read_real('LevelData','numObjs',-1);
for (var a = 0; a < length; a++){
    sec = string(a);

    var obj = ini_read_real(sec,'id',-1);
    var xx = ini_read_real(sec,'x',0);
    var yy = ini_read_real(sec,'y',0);
    
    ds_list_add(global.object,obj);
    ds_list_add(global.xx,xx);
    ds_list_add(global.yy,yy);
    
    instance_create(xx,yy,obj);
}
