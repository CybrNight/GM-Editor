saveAs = argument0;

if (file_exists(global.loadedLevel) && !saveAs){
    file_delete(global.loadedLevel);
    name = global.loadedLevel;
}else if (!file_exists(global.loadedLevel) || saveAs){
    name = get_string('Enter Level Name','')+".dat";
    show_debug_message(global.loadedLevel + ' ' + string(saveAs));
}

if (name == '.dat' || name == 'this.dat') exit;
 
if (file_exists(name)){
    choice = show_question('Level Already Exists. #Do You Want To Overwrite It?');
    
    if (choice){
        file_delete(name);
    }else{
        exit;
    }
}

global.loadedLevel = name;
ini_open(name);

var length = ds_list_size(global.object);
for (var a = 0; a < length; a++){
    var sec = string(a);

    var obj = global.object[|a] 
    var xx = global.xx[|a]
    var yy = global.yy[|a]
    
    ini_write_real(sec,'id',obj);
    ini_write_real(sec,'x',xx);
    ini_write_real(sec,'y',yy);
    
    ini_write_real('LevelData','numObjs',length);
}

ini_close();
