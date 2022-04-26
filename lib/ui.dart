library ui;

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'extension/scope_ex.dart';
import 'ui/action.dart';

export 'ui.dart';

export 'extension/scope_ex.dart';
export 'ui/action.dart';
export 'ui/color.dart';
export 'ui/effect/bottom_fab_location.dart';
export 'ui/navigation/gradient_tab_indicator.dart';
export 'ui/layout/refresh_layout.dart';
export 'ui/rounded_rectangle.dart';
export 'ui/widget/button.dart';
export 'ui/widget/container.dart';
export 'ui/widget/complex/blur_panel.dart';
export 'ui/widget/complex/swiper.dart';
export 'ui/widget/image.dart';
export 'ui/widget/card.dart';
export 'ui/widget/text.dart';
export 'ui/widget/text_field.dart';
export 'ui/border.dart';
export 'ui/alignment.dart';
export 'ui/collection.dart';
export 'ui/shadow.dart';
export 'ui/flex.dart';
export 'ui/mask.dart';
export 'ui/scrollable.dart';
export 'input.dart';
export 'ui/layout/relation.dart';
export 'platform/platform.dart';
export 'ones.dart';

part 'ui/layout.dart';

class _UI {
  Widget operator >(Widget widget) => widget;
}

final ui = _UI();
