import 'package:flutter/material.dart';

import 'platform/platform.dart';

///隐藏软键盘
hideSoftInput(BuildContext context) {
  FocusScope.of(context).requestFocus(FocusNode());
}
