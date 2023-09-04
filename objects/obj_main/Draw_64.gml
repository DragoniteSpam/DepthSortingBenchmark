draw_set_font(fnt_font);
draw_set_colour(c_white);
draw_text(32, 32, $"Instance count: {self.count}, fps: {fps} / {fps_real}");
draw_text(32, 64, $"Depth sorting: {self.depth_sorting ? "on" : "off"}");
draw_text(32, 96, "Use the Up and Down keys to increase or decrease instance count");
draw_text(32, 128, "Use Enter to enable/disable depth sorting");