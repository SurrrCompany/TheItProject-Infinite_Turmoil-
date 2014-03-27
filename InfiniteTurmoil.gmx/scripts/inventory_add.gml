//Call:     inventory_add(itemno,number,i_name,i_info,i_mindam,i_maxdam,i_atkspd,
//          i_class,i_reqlvl,i_subimage,i_type,i_sprite)          
//Info:     Adds item(s) to the inventory. itemID is the ID
//          of the item to be added and number is the quantity
//          of that item you want to add.
//Event:    Any
//Returns:  Number of items that couldn't be added because
//          the inventory was full. For example, if you add
//          10 items and there's only 7 places left in the
//          inventory, it will return 3.

var itemno,number,newno,i_name,i_info,i_mindam,i_maxdam,i_atkspd,i_class,i_reqlvl,
i_subimage,i_type,i_sprite;
newno=0
i_name= argument0
i_info= argument1
i_mindam= argument2
i_maxdam= argument3
i_atkspd= argument4
i_class= argument5
i_reqlvl= argument6
i_subimage= argument7
i_type= argument8
itemno= argument9
number= argument10
sprite_index= argument11

var a;
if (item_stackable(itemno)=1)
{
    var a;
    for (a=1 a<=42 a+=1) 
        {
        if (inv_item[a,0]=itemno) {newno=a; inv_item[a,1]+=number; a=43;}
        }
    if (newno=0) 
    {
        var b,lastno;
        lastno=0
        for (b=1 b<=42 b+=1) {if (inv_item[b,0]=0) {lastno=b; b=43}}
        if (lastno=0) {return (1)} 
        else 
        {
            inv_item[lastno,0]=i_name
            inv_item[lastno,1]=i_info
            inv_item[lastno,2]=i_mindam
            inv_item[lastno,3]=i_maxdam
            inv_item[lastno,4]=i_atkspd
            inv_item[lastno,5]=i_class
            inv_item[lastno,6]=i_reqlvl
            inv_item[lastno,7]=i_subimage
            inv_item[lastno,8]=i_type
            inv_item[lastno,9]=itemno
            inv_item[lastno,10]=number
            inv_item[lastno,11]=sprite_index
        }
    }
} 
else 
{
    var lastno,n;
    lastno=0
    n=0
    repeat (number) 
    {
        n+=1
        var a;
        for (a=1 a<=42 a+=1) 
            {if (inv_item[a,9]=0) {lastno=a; a=43}}
        if (lastno=0)
            {return (number-n)} 
        else 
            {
            inv_item[lastno,0]=i_name
            inv_item[lastno,1]=i_info
            inv_item[lastno,2]=i_mindam
            inv_item[lastno,3]=i_maxdam
            inv_item[lastno,4]=i_atkspd
            inv_item[lastno,5]=i_class
            inv_item[lastno,6]=i_reqlvl
            inv_item[lastno,7]=i_subimage
            inv_item[lastno,8]=i_type
            inv_item[lastno,9]=itemno
            inv_item[lastno,10]=number
            inv_item[lastno,11]=sprite_index
            }
    }
}
return (0)
