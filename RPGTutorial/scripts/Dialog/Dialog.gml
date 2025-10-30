function create_dialog(_messages){
    if (instance_exists(obj_dialog)) return;
        
    var _inst = instance_create_depth(0, 0, 0, obj_dialog);
    _inst.messages = _messages;
    _inst.current_message = 0;
}

char_colors = {
    "Congrats": c_yellow,
    "Cross": c_yellow,
    "Singh": c_aqua,
    "Cam": c_orange
}

room1_end = [
{
    name: "Cross",
    msg: "You have reached the end!\nBut there is more."
},
{
    name: "Cross",
    msg: "Please proceed to the next area."
},
]

welcome_dialog = [
{
    name: "Cross",
    msg: "Welcome to the pit."
},
{
    name: "Singh",
    msg: "Thanks!"
},
{
    name: "Cross",
    msg: "Well, it's a cave, but I like to call it the pit."
},
{
    name: "Singh",
    msg: "Okay..."
},{
    name: "Cross",
    msg: "Can you make it to the end?"
},
]

cam_diag1 = [
{
    name: "Cam",
    msg: "I'm scared to go inside."
},
{
    name: "Cam",
    msg: "Can you try first, please?"
},
]