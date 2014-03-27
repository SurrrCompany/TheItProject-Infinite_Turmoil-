//Call:     inventory_draw(x,y,spr,alpha,backgroundcol)
//Info:     This will draw the inventory on the given x and y position. spr is
//          the sprite you want the inventory to have, you can write -1 if you
//          don't want a sprite (like I have done). Alpha is the alpha of the
//          inventory and backgroundcol is the background color of the inventory
//          (only if you don't use a sprite).
//Event:    Draw
//Returns:  ---

var xx,yy,spr,alpha,bgcol;
xx=argument0
yy=argument1
spr=argument2
alpha=argument3
bgcol=argument4

draw_set_alpha(alpha)

//Draw sprite or inventory
if (sprite_exists(spr_inv)) {
    draw_sprite_stretched_ext(spr_inv,0,xx,yy,(xx+211)-xx,(yy+246)-yy,c_white,1)
        
      draw_set_alpha(1)
      draw_set_font(fnt002)
      draw_set_halign(fa_center)
      draw_set_color(c_black)
      draw_text(x+248/2+1,y+3,"Inventory")
      draw_set_color(c_white)
      draw_text(x+248/2,y+2,"Inventory")
      draw_set_halign(fa_left)
      draw_set_alpha(1)
}

draw_set_alpha(0)
draw_set_color(c_white)

//if (inv_holditem = false)

var a,b,no;
no= 1
if (inv_optionshow=0) {inv_select=0}

for (b=0;b<7;b+=1){
     for (a=0;a<6;a+=1){
          for (b=0;b<7;b+=1){
               for (a=0;a<6;a+=1){
                    if ((inv_holditempos=no)=0){
                        var spr,index;
                        
                        spr= inv_item[no,11]
                        index= inv_item[no,7]
                        draw_sprite(spr,index,xx+2+(35*a)+16,yy+2+(35*b)+16)
                        if (item_stackable(inv_item[no,0])=1){
                            draw_set_font(fnt002)
                            draw_set_color(c_white)
                            //draw_text(xx+2+(35*a)+1,yy+1+(35*b)+1,value_str(global.inv_item[no,1]))
                            draw_set_color(c_white)
                        }
                    }
                    if (mouse_x>=xx+(35*a) && mouse_x<=xx+(35*a)+35 && mouse_y>=yy+(35*b) && mouse_y<=yy+(35*b)+35 && inv_optionshow=0) {inv_select=no}
                    no+=1
                }
          }
          draw_rectangle(xx+2+(35*a),yy+2+(35*b),xx+2+(35*a)+32,yy+2+(35*b)+32,1)
     }
}

//Draw the held item & Set temporary variables
var a,b,no,invhover;
no=1
if (inv_holditem=1) {invhover= inv_optionitemno} else {invhover= inv_select}

if (inv_holditem = true)
for (b=0;b<7;b+=1){
     for (a=0;a<6;a+=1){
          for (b=0;b<7;b+=1){
               for (a=0;a<6;a+=1){
                    if ((inv_holditempos=no)=0){
                    var spr,index;
                    
                    spr= inv_item[global.inv_holditemno,11]
                    index= inv_item[global.inv_holditemno,7]
                    draw_sprite_ext(spr,index,mouse_x,mouse_y,1,1,0,c_white,0.7)
                    if (item_stackable(inv_item[inv_holditempos,0])=1){
                        spr= item_sprite(inv_item[inv_holditempos,0]);
                        index= item_index(inv_item[inv_holditempos,1])
                    }
                    if (item_stackable(inv_item[inv_holditempos,0])=1){
                        draw_set_alpha(0.5)
                        draw_set_font(fnt002)
                        draw_set_color(c_black)
                        draw_text(mouse_x-15,mouse_y-15,value_str(inv_item[inv_holditempos,1]))
                        draw_set_color(c_white)
                        draw_text(mouse_x-16,mouse_y-16,value_str(inv_item[inv_holditempos,1]))
                        draw_set_color(c_black)
                        draw_set_alpha(1)
                    }
               }
               no+=1
         }
     }
}}
