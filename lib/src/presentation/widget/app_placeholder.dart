import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class AppPlaceholder extends StatelessWidget {
  final Widget child;

  const AppPlaceholder({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Theme.of(context).hoverColor,
      highlightColor: Theme.of(context).highlightColor,
      enabled: true,
      child: child,
    );
  }
}
