import 'package:flutter/material.dart';

import 'data_maps.dart';
void on_tap2(){
  if (state[2] == true) {
        state[2] = false;
        color[2] = Color(0xffF2F2FA);
        value[2] = 0;
      } else {
        state[2] = true;
        color[2] = Color(0xffffffff);
        value[2] = 24;
      }
      value[0] = value[1]! + value[2]! + value[3]!;
}

void on_changed2(bool? set){
  state[2] = set;
      if (state[2] == true) {
        color[2] = Color(0xffffffff);
        value[2] = 24;
      } else {
        color[2] = Color(0xffF2F2FA);
        value[2] = 0;
      }
      value[0] = value[1]! + value[2]! + value[3]!;
}