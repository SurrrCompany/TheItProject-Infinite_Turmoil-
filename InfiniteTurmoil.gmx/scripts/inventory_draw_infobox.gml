//Call:     inventory_draw_infobox(x,y,spr,alpha,backgroundcol)
//Info:     Draws the infobox, that will show some information about
//          the selected item. x and y is the position on the screen
//          to draw the box. spr is the sprite you want the info box to have,
//          you can write -1 if you don't want a sprite (like I have done).
//          Alpha is the alpha of the info box and backgroundcol is the
//          background color of the info box (only if you don't use a sprite).
//Event:    Draw
//Returns:  ---

var xx,yy,spr,alpha,bgcol;
xx=argument0
yy=argument1
spr=argument2
alpha=argument3
bgcol=argument4

draw_set_alpha(alpha)

//Draw infobox
if (sprite_exists(spr_inv_white)) {
    draw_sprite_stretched_ext(spr,-1,xx,yy,(xx+200)-xx,(yy+150)-yy,c_white,0.80)
    draw_set_alpha(1)
    draw_set_color(c_black)
    draw_rectangle(xx,yy,xx+200,yy+150,1)
    draw_rectangle(xx+2,yy+2,xx+198,yy+148,1)
} else {
    draw_set_color(bgcol)
    draw_rectangle(xx,yy,xx+200,yy+150,1)

    draw_set_alpha(1)
    draw_set_color(c_black)
    draw_rectangle(xx,yy,xx+200,yy+150,1)
    draw_rectangle(xx+2,yy+2,xx+198,yy+148,1)
}
draw_set_alpha(1)
draw_set_color(c_white)

//Set temporary variables
var invhover,itemno,number,i_name,i_info,i_mindam,i_maxdam,i_atkspd,i_class,
i_reqlvl,i_subimage,i_type;
if (inv_holditem=1) {invhover=inv_holditempos} else {invhover=inv_select}
i_name     = inv_item[invhover,0]
i_info     = inv_item[invhover,1]
i_mindam   = inv_item[invhover,2]
i_maxdam   = inv_item[invhover,3]
i_atkspd   = inv_item[invhover,4]
i_class    = inv_item[invhover,5]
i_reqlvl   = inv_item[invhover,6]
i_subimage = inv_item[invhover,7]
i_type     = inv_item[invhover,8]
itemno     = inv_item[invhover,9]
number     = inv_item[invhover,10]

if inv_select>0 
{
name         = i_name
info         = i_info
mindamage    = i_mindam
maxdamage    = i_maxdam
atk_speed    = i_atkspd
class        = i_class
req_level    = i_reqlvl
subimage     = i_subimage
type         = i_type
}
else
{
name         = argument5
info         = argument6
mindamage    = argument7
maxdamage    = argument8
atk_speed    = argument9
class        = argument10
req_level    = argument11
subimage     = argument12
type         = argument13
}

//Draw the item's name
var color;
draw_set_font(fnt001)
draw_set_color(c_ltgray)

if inv_select>0
{
if (i_type= "1h_sword") or (i_type= "1h_axe") {color= c_blue}
else if (i_type= "guardian_weapon") {color= c_green}
draw_text(xx+8,yy+7,i_name)
draw_set_color(color)
draw_text(xx+7,yy+6,i_name)
}
else
{
if (type= "1h_sword") or (type= "1h_axe") {color= c_blue}
else if (type= "guardian_weapon") {color= c_green}
draw_text(xx+8,yy+7,name)
draw_set_color(color)
draw_text(xx+7,yy+6,name)
}

draw_set_font(fnt002)
//if the item is stackable, draw the number
if (item_stackable(itemno)=1)
{
    draw_set_color(c_blue)
    draw_text(xx+5,yy+17,"x"+string(number))
}
//Draw the item info
draw_set_color(c_black)
draw_set_alpha(1)
draw_text(xx+6,yy+24,info)
draw_text(xx+6,yy+40,"Attack: "+string(mindamage)+" ~ "+string(maxdamage))
draw_text(xx+6,yy+56,"Attack speed: "+string(atk_speed))
draw_text(xx+6,yy+72,"Req Job: "+string(class))
draw_text(xx+6,yy+88,"Required Level: "+string(req_level))
/*draw_set_color(c_yellow)
draw_text(xx+5,yy+37,info)
