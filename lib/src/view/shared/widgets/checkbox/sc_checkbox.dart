import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:library_book_app/src/shared/sc_colors.dart';

class ScCheckbox extends ConsumerWidget {
  final double size;
  final double borderSize;
  final double iconSize;
  final bool value;
  final Color iconColor;
  final Function() onTap;

  const ScCheckbox({
    Key? key,
    required this.onTap,
    this.value = false,
    this.size = 25,
    this.borderSize = 2,
    this.iconSize = 20,
    this.iconColor = SCColors.accent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
            color: value ? SCColors.primary : SCColors.accent,
            width: borderSize,
          ),
          color: value ? SCColors.primary : Colors.transparent,
        ),
        child: Center(
          child: value
              ? Icon(
                  Icons.check,
                  size: iconSize,
                  color: iconColor,
                )
              : null,
        ),
      ),
    );
  }
}
