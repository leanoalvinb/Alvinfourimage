/*
 * Main.eq
 * Generated by Eqela Studio 2.0b7.4
 */
public class Main : SEScene
{
    SESprite image1;
    SESprite image2;
    SESprite image3;
    SESprite image4;
    SESprite text;
    double opacity;
    
    public void initialize(SEResourceCache rsc) {
        base.initialize(rsc);
        add_sprite_for_color(Color.instance("black"), get_scene_width(), get_scene_height());
        
        rsc.prepare_image("gc","teletubs1",0.5* get_scene_width(),0.5* get_scene_height());
        image1 = add_sprite_for_image(SEImage.for_resource("gc"));
        image1.move(0,0);
        rsc.prepare_image("gc2","teletubs2",0.5* get_scene_width(),0.5* get_scene_height());
        image2 = add_sprite_for_image(SEImage.for_resource("gc2"));
        image2.move(0.5*get_scene_width(),0);
        rsc.prepare_image("gc3","teletubs3",0.5* get_scene_width(),0.5* get_scene_height());
        image3 = add_sprite_for_image(SEImage.for_resource("gc3"));
        image3.move(0,0.5*get_scene_height());
        rsc.prepare_image("gc4","teletubs4",0.5* get_scene_width(),0.5* get_scene_height());
        image4 = add_sprite_for_image(SEImage.for_resource("gc4"));
        image4.move(0.5*get_scene_width(),0.5*get_scene_height());
        rsc.prepare_font("myfont","arial bold color=white",40);
        text = add_sprite_for_text(" ","myfont");
        
        
    }
    public void on_key_press(String name,String str) {
        base.on_key_press(name,str);    
        text.set_text("OUMA SHU");
        text.move(0.25 * get_scene_width() - 0.5 * text.get_width() , 0.25*get_scene_height());    
    }
        public void on_pointer_press(SEPointerInfo pi) {
        if(pi.is_inside(0,0,0.5*get_scene_width(),0.5*get_scene_height())){    
            base.on_pointer_press(pi);    
            text.set_text("PO!");
            text.move(0.25 * get_scene_width() - 0.5 * text.get_width() , 0.25*get_scene_height());
            image1.set_alpha(0.5);
            image2.set_alpha(1);
            image3.set_alpha(1);
            image4.set_alpha(1);    
        }
        else if(pi.is_inside(0.5*get_scene_width(),0,0.5*get_scene_width(),0.5*get_scene_height())){    
            base.on_pointer_press(pi);    
            text.set_text("DIPSY!");
            text.move(0.75 * get_scene_width() - 0.5 * text.get_width() , 0.25*get_scene_height());
            image1.set_alpha(1);
            image2.set_alpha(0.5);
            image3.set_alpha(1);
            image4.set_alpha(1);    
        }
        else if(pi.is_inside(0,0.5*get_scene_height(),0.5*get_scene_width(),0.5*get_scene_height())){    
            base.on_pointer_press(pi);    
            text.set_text("LA LA!");
            text.move(0.25 * get_scene_width() - 0.5 * text.get_width() , 0.75*get_scene_height());
            image1.set_alpha(1);
            image2.set_alpha(1);
            image3.set_alpha(0.5);
            image4.set_alpha(1);    
        }
        else if(pi.is_inside(0.5*get_scene_width(),0.5*get_scene_height(),0.5*get_scene_width(),0.5*get_scene_height())){    
            base.on_pointer_press(pi);    
            text.set_text("TINKY WINKY!");
            text.move(0.75 * get_scene_width() - 0.5 * text.get_width() , 0.75*get_scene_height());    
            image1.set_alpha(1);
            image2.set_alpha(1);
            image3.set_alpha(1);
            image4.set_alpha(0.5);
        }
        
        
    }
    public void set_alpha(double alpha) {
        opacity = alpha;
    }
}
