import 'package:flutter/material.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';
import '/extension/scope_ex.dart';
import '/values/colors.dart';

import 'empty_view.dart';

///刷新容器
class RefreshLayout extends StatelessWidget {
  const RefreshLayout({
    Key? key,
    required this.child,
    this.showEmptyView,
    this.onRefresh,
    this.onLoad,
    this.emptyWidget,
    this.header,
    this.footer,
  }) : super(key: key);

  final Widget child;
  final Widget? emptyWidget;
  final Header? header;
  final Footer? footer;
  final bool? showEmptyView;
  final Future<void> Function()? onRefresh;
  final Future<void> Function()? onLoad;

  @override
  Widget build(BuildContext context) {
    var voidView = emptyWidget ?? const EmptyView();

    return EasyRefresh(
        emptyWidget: showEmptyView?.let((it) => it == true ? voidView : null),
        header: header ?? BallPulseHeader(color: const Color(0xFFB2EBF2), backgroundColor: Colors.transparent),
        footer: footer ?? BezierBounceFooter(backgroundColor: const Color(0xFFB2EBF2)),
        onRefresh: () async => await onRefresh?.call(),
        onLoad: () async => await onLoad?.call(),
        child: child);
  }
}
