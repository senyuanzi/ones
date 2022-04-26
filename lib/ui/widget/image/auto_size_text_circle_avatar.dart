import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:ones/ui.dart';

class AutoSizeTextCircleAvatar extends StatelessWidget {
  final String? url;

  final double size;

  final String defaultText;

  final Color backgroundColor;

  const AutoSizeTextCircleAvatar(this.url, {Key? key, this.size = 38, this.defaultText = '', this.backgroundColor = Colors.blueAccent}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
        fit: BoxFit.cover,
        imageUrl: url ?? "",
        errorWidget: (context, url, error) => CircleAvatar(
            child: AutoSizeText(
              defaultText,
              maxLines: 1,
              minFontSize: 5,
              overflow: TextOverflow.visible,
            ).paddingAll(4),
            radius: size / 2)).size(width: size, height: size).roundedRect(size * 2);
  }
}
