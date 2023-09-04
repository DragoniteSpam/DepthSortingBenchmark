if (keyboard_check_pressed(vk_enter)) {
    self.depth_sorting = !self.depth_sorting;
}

if (keyboard_check_pressed(vk_space)) {
    self.movement = !self.movement;
}

if (keyboard_check_pressed(vk_up)) {
    self.count = min(self.count + 2_000, 100_000);
}

if (keyboard_check_pressed(vk_down)) {
    self.count = max(self.count - 2_000, 2_000);
}

if (self.movement) {
    with (obj_thingy) {
        self.x += self.velocity * dcos(self.dir);
        self.y -= self.velocity * dsin(self.dir);
    }
}

if (self.depth_sorting) {
    with (obj_thingy) self.depth = -self.bbox_bottom;
}