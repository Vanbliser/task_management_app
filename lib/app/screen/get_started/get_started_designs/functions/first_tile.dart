import 'package:flutter/material.dart';

import 'data_maps.dart';
void on_tap1(){
  if (state[1] == true) {
        state[1] = false;
        color[1] = Color(0xffF2F2FA);
        value[1] = 0;
      } else {
        state[1] = true;
        color[1] = Color(0xffffffff);
        value[1] = 43;
      }
      value[0] = value[1]! + value[2]! + value[3]!;
}

void on_changed1(bool? set){
  state[1] = set;
      if (state[1] == true) {
        color[1] = Color(0xffffffff);
        value[1] = 43;
      } else {
        color[1] = Color(0xffF2F2FA);
        value[1] = 0;
      }
      value[0] = value[1]! + value[2]! + value[3]!;
}