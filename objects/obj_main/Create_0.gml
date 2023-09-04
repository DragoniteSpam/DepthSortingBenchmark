self.count = 6_000;
self.depth_sorting = true;
self.movement = true;

self.Spawn = function(n) {
    var current = instance_number(obj_thingy);
    if (current < n) {
        repeat (n - current) {
            instance_create_depth(random(room_width), random(room_height), 0, obj_thingy);
        }
    } else {
        repeat (current - n) {
            instance_destroy(instance_find(obj_thingy, --current));
        }
    }
};

self.Spawn(self.count);

font_enable_effects(fnt_font, true, {
    outlineEnable: true,
    outlineDistance: 3,
    outlineColour: c_black,
    outlineAlpha: 1
});