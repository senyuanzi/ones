extension StringX on String {
  double toDouble() {
    return double.parse(this);
  }

  int toInt() {
    return int.parse(this);
  }

  bool isMobile() {
    return RegExp(r'^((13[0-9])|(14[5,7,9])|(15[^4])|(18[0-9])|(17[0,1,3,5,6,7,8])|(19)[0-9])\d{8}$').hasMatch(this);
  }

  String middleEllipsis({int start = 6, int end = 6}) {
    if (length < (start + end)) {
      return this;
    }
    return replaceRange(start, length - end, "……");
  }
}
