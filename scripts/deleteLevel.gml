var name = argument[0];
var success;

if (name == '') exit;

if (name == 'this'){
    directory_destroy(global.loadedLevel);
    success = true;
}else if (directory_exists(name)){
    directory_destroy(name);
    success = true;
}else{
    success = false;
}

if (success) show_message('Level Deleted.');
else show_message(name+' Does Not Exist');
