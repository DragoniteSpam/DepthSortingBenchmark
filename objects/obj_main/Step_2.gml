if (keyboard_check_pressed(vk_enter)) {
    self.depth_sorting = !self.depth_sorting;
}

if (keyboard_check_pressed(vk_up)) {
    self.count = min(self.count + 2_000, 100_000);
}

if (keyboard_check_pressed(vk_down)) {
    self.count = max(self.count - 2_000, 2_000);
}

if (self.depth_sorting) {
    with (spr_thingy) self.depth = -self.bbox_bottom;
}