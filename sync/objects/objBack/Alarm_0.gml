if (global.background_model_index != -1) {
 inst = instance_create_depth(0, 0, 3, objBackObject);
 inst.mind = global.background_model_index;
 with (inst)
  event_user(0);
}
alarm[0] = 3;

