import 'package:flutter/material.dart';

import 'data_maps.dart';

void initFunc() {
  if (state[1] == true) {
    color[1] = Color(0xffffffff);
    value[1] = 43;
  } else {
    color[1] = Color(0xffF2F2FA);
    value[1] = 0;
  }

  if (state[2] == true) {
    color[2] = Color(0xffffffff);
    value[2] = 24;
  } else {
    color[2] = Color(0xffF2F2FA);
    value[2] = 0;
  }
  if (state[3] == true) {
    color[3] = Color(0xffffffff);
    value[3] = 33;
  } else {
    color[3] = Color(0xffF2F2FA);
    value[3] = 0;
  }

  value[0] = value[1]! + value[2]! + value[3]!;
}
