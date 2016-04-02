var name = argument0;

if (directory_exists('Levels/'+name)){
    global.loadedLevel = name;
}else{
    show_message(name+' Does Not Exist');
    loadLevel(global.loadedLevel);
    exit;
}

//Remove All Items
clearObjs();
clearTiles();

//Load Room Attributes
ini_open('Levels/'+name+'/attributes.dat')
var length = ini_read_real('Attributes','numOfObjs',-1);
show_debug_message(string(length));
ini_close();

//Load Objects
ini_open('Levels/'+name+'/objects.dat');

for (var a = 0; a < length; a++){
    sec = string(a);

    var obj = ini_read_real(sec,'id',-1);
    var xx = ini_read_real(sec,'x',0);
    var yy = ini_read_real(sec,'y',0);
    
    ds_list_add(global.object,obj);
    ds_list_add(global.objX,xx);
    ds_list_add(global.objY,yy);
    
    instance_create(xx,yy,obj);
}
ini_close();

//Load Tiles
