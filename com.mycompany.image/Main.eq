
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
		add_sprite_for_color(Color.instance("red"),get_scene_width(),get_scene_height());
		rsc.prepare_image("myimage","night",0.5*get_scene_width(),get_scene_height()*0.5);
		image1=add_sprite_for_image(SEImage.for_resource("myimage"));
		image1.move(0,0);

		rsc.prepare_image("myimage1","night stars",0.5*get_scene_width(),get_scene_height()*0.5);
		image2=add_sprite_for_image(SEImage.for_resource("myimage1"));
		image2.move(get_scene_width()*0.5,0);

		rsc.prepare_image("myimage2","night starsss",0.5*get_scene_width(),get_scene_height()*0.5);
		image3=add_sprite_for_image(SEImage.for_resource("myimage2"));
		image3.move(0,get_scene_height()*0.5);

		
		rsc.prepare_image("myimage3","night strarss",0.5*get_scene_width(),get_scene_height()*0.5);
		image4=add_sprite_for_image(SEImage.for_resource("myimage3"));
		image4.move(get_scene_width()*0.5,get_scene_height()*0.5);

		rsc.prepare_font("myfont","arial bold color=white",40);

		text = add_sprite_for_text(" ","myfont");
		text.move(0.25*get_scene_width()-0.5*text.get_width(),0.25*get_scene_height()-0.5*text.get_height());
	}

	public void on_pointer_press(SEPointerInfo pi) {
		if(pi.is_inside(0,0,0.5*get_scene_width(),0.5*get_scene_height())) {
				
			base.on_pointer_press(pi);
	
			text.set_text("Night Stars Orange");
			text.move(0.25*get_scene_width()-0.5*text.get_width(),0.25*get_scene_height()-0.5*text.get_height());
			image1.set_alpha(0.5);
			image2.set_alpha(1);
			image3.set_alpha(1);
			image4.set_alpha(1);
	
				

	
		}

		else if(pi.is_inside(0.5*get_scene_width(),0,0.5*get_scene_width(),0.5*get_scene_height())) {
				
			base.on_pointer_press(pi);
	
			text.set_text("Night Stars Dark");
			text.move(get_scene_width()*0.75-0.5*text.get_width(),get_scene_height()*0.25);
			image2.set_alpha(0.5);
			image1.set_alpha(1);
			image3.set_alpha(1);
			image4.set_alpha(1);
			

		}

		else if(pi.is_inside(0,get_scene_height()*0.5,get_scene_width()*0.5,get_scene_height())) {
				
			base.on_pointer_press(pi);
	
			text.set_text("Night Stars Blue");
			text.move(get_scene_width()*0.25-0.5*text.get_width(),get_scene_height()*0.75);
			image3.set_alpha(0.5);
			image1.set_alpha(1);
			image2.set_alpha(1);
			image4.set_alpha(1);
		}		


		else if(pi.is_inside(get_scene_width()*0.5,get_scene_height()*0.5,get_scene_width(),get_scene_height())) {
				
			base.on_pointer_press(pi);
	
			text.set_text("Night Stars Green");
			text.move(get_scene_width()*0.75-0.5*text.get_width(),get_scene_height()*0.75);
			image4.set_alpha(0.5);
			image1.set_alpha(1);
			image2.set_alpha(1);
			image3.set_alpha(1);
		}
	
	}

	public void set_alpha(double alpha) {
		opacity = alpha;
	}

	
}
