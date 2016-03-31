var name = argument[0];
var success;

if (name == '.dat') exit;

if (name == 'this.dat'){
    file_delete(global.loadedLevel);
    success = true;
}else if (file_exists(name)){
    file_delete(name);
    success = true;
}else{
    success = false;
}

if (success) show_message('File Deleted.');
else show_message(name+' Does Not Exist');
