saveAs = argument0;

/*if (directory_exists(global.loadedLevel) && !saveAs){
    directory_destroy(global.loadedLevel);
    name = global.loadedLevel;
}else if (!file_exists(global.loadedLevel) || saveAs){
    name = get_string('Enter Level Name','');
    show_debug_message(global.loadedLevel + ' ' + string(saveAs));
}

if (name == '' || name == 'this') exit;
 
if (file_exists(name)){
    choice = show_question('Level Already Exists. #Do You Want To Overwrite It?');
    
    if (choice){
        file_delete(name);
    }else{
        exit;
    }
}*/

if (directory_exists(global.loadedLevel) && !saveAs){
    file_delete(global.loadedLevel+'/objects.dat');
    file_delete(global.loadedLevel+'/attributes.dat');
    name = global.loadedLevel;
}else if (!directory_exists(global.loadedLevel) || saveAs){
    name = get_string('Enter Level Name','');
}else if (directory_exists(name)){
    choice = show_question('Level Already Exits. #Do You Want To Overwrite It?');

    if (choice){
        file_delete(global.loadedLevel+'/objects.dat');
        file_delete(global.loadedLevel+'/attributes.dat');
    }else{
        exit;
    }
}

if (name == '' || name == 'this') exit;

global.loadedLevel = name;

//Save Objcts
ini_open('Levels/'+name+'/objects.dat');

var numOfObjs = ds_list_size(global.object);
for (var a = 0; a < numOfObjs; a++){
    var sec = string(a);

    var obj = global.object[|a] 
    var xx = global.objX[|a]
    var yy = global.objY[|a]
    
    ini_write_real(sec,'id',obj);
    ini_write_real(sec,'y',yy);
    ini_write_real(sec,'x',xx);
}
ini_close();

//Save Level Data
ini_open('Levels/'+name+'/attributes.dat');
ini_write_real('Attributes','numOfObjs',numOfObjs);
ini_close();

ini_open('Levels/'+name+'/tiles.dat');
//Save Tiles ---WIP---
var numOfTiles = ds_list_size(global.tileBackground);
for (var a = 0; a < numOfTiles; a++){
    var sec = string(a);
    
    var back = global.tileBackground[|a];
    var tileL = global.tileL[|a];
    var tileR = global.tileR[|a];
    var tileW = global.tileW[|a];
    var tileH = global.tileH[|a];
    var tileX = global.tileX[|a];
    var tileY = global.tileX[|a];
    var tileDepth = global.tileDepth[|a];
    
    ini_write_real(sec,'background',back);
    ini_write_real(sec,'tileLeft',left);
    ini_write_real(sec,'tileRight',right);
    ini_write_real(sec,'tileWidth',width);
    ini_write_real(sec,'tileHeight',height);
    ini_write_real(sec,'tileX',tileX);
    ini_write_real(sec,'tileY',tileY);
    ini_write_real(sec,'depth',tileDepth);
}
ini_close();
