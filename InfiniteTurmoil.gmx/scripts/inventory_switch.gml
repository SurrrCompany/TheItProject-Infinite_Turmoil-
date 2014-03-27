//Call:     inventory_switch(no1,no2)
//Info:     This will switch item number no1 with no2 in the inventory.
//Event:    Any
//Returns:  ---

var no1,no2,temp0,temp1,temp2,temp3,temp4,temp5,temp6,temp7,temp8,temp9,temp10,temp11;
no1=argument0
no2=argument1

if (no1=0 or no2=0) {exit;}
temp0=inv_item[no1,0]
temp1=inv_item[no1,1]
temp2=inv_item[no1,2]
temp3=inv_item[no1,3]
temp4=inv_item[no1,4]
temp5=inv_item[no1,5]
temp6=inv_item[no1,6]
temp7=inv_item[no1,7]
temp8=inv_item[no1,8]
temp9=inv_item[no1,9]
temp10=inv_item[no1,10]
temp11=inv_item[no1,11]
inv_item[no1,0]=inv_item[no2,0]
inv_item[no1,1]=inv_item[no2,1]
inv_item[no1,2]=inv_item[no2,2]
inv_item[no1,3]=inv_item[no2,3]
inv_item[no1,4]=inv_item[no2,4]
inv_item[no1,5]=inv_item[no2,5]
inv_item[no1,6]=inv_item[no2,6]
inv_item[no1,7]=inv_item[no2,7]
inv_item[no1,8]=inv_item[no2,8]
inv_item[no1,9]=inv_item[no2,9]
inv_item[no1,10]=inv_item[no2,10]
inv_item[no1,11]=inv_item[no2,11]
inv_item[no2,0]=temp0
inv_item[no2,1]=temp1
inv_item[no2,2]=temp2
inv_item[no2,3]=temp3
inv_item[no2,4]=temp4
inv_item[no2,5]=temp5
inv_item[no2,6]=temp6
inv_item[no2,7]=temp7
inv_item[no2,8]=temp8
inv_item[no2,9]=temp9
inv_item[no2,10]=temp10
inv_item[no2,11]=temp11
