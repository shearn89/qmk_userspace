#ifndef USERSPACE
#define USERSPACE

#pragma once

#include "quantum.h"
#include "color.h"

enum user_keycodes {
  CLMAKDH = SAFE_RANGE,
};

enum user_layers {
  _CLMAKDH,
  _FN1_LAYER,
  _FN2_LAYER,
};

#endif
