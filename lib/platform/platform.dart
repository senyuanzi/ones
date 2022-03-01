import 'dart:io';

import 'package:ones/ones.dart';

extension OnesX on Ones {
  static get isSimulator => Platform.resolvedExecutable.contains("Simulator");
}
