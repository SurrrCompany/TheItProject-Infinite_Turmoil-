//Call:     drop_item(invno)
//Info:     This will create a obj_sword instance on the
//          players position with the selected item's variables.
//Event:    Any
//Returns:  ---

var invno,obj;
invno= argument0
obj= instance_create(obj_player1.x+16,obj_player1.y-16,obj_1h_sword)

obj.item=global.inv_item[invno,0]
obj.number=global.inv_item[invno,1]
obj.sprite=global.inv_item[invno,2]
global.inv_item[invno,0]=0
global.inv_item[invno,1]=0
global.inv_item[invno,2]=0
