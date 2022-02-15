import 'package:flutter/material.dart';

import 'data_maps.dart';
void on_tap3(){
  if (state[3] == true) {
        state[3] = false;
        color[3] = Color(0xffF2F2FA);
        value[3] = 0;
      } else {
        state[3] = true;
        color[3] = Color(0xffffffff);
        value[3] = 33;
      }
      value[0] = value[1]! + value[2]! + value[3]!;
}

void on_changed3(bool? set){
  state[3] = set;
      if (state[3] == true) {
        color[3] = Color(0xffffffff);
        value[3] = 33;
      } else {
        color[3] = Color(0xffF2F2FA);
        value[3] = 0;
      }
      value[0] = value[1]! + value[2]! + value[3]!;
}