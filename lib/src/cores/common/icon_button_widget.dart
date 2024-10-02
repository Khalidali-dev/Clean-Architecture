import '../../src.dart';

class IconButtonWidget extends StatelessWidget {
  const IconButtonWidget(
      {super.key,
      this.icon,
      this.onPressed,
      this.hoverColor,
      this.filled = false,
      this.tooltip,
      this.iconSize,
      this.padding,
      this.alignment,
      this.color,
      this.disabledColor,
      this.focusColor,
      this.highlightColor,
      this.splashColor,
      this.mouseCursor,
      this.focusNode,
      this.autofocus = false,
      this.isSelected = false,
      this.buttonStyle});

  final Widget? icon;
  final VoidCallback? onPressed;
  final Color? hoverColor;
  final bool? filled;
  final String? tooltip;
  final double? iconSize;
  final EdgeInsetsGeometry? padding;
  final AlignmentGeometry? alignment;
  final Color? color;
  final Color? disabledColor;
  final Color? focusColor;
  final Color? highlightColor;
  final Color? splashColor;
  final MouseCursor? mouseCursor;
  final FocusNode? focusNode;
  final bool autofocus;
  final bool isSelected;
  final ButtonStyle? buttonStyle;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: icon!,
      hoverColor: hoverColor,
      iconSize: iconSize ?? 24.0,
      padding: padding ?? padding10,
      alignment: alignment ?? Alignment.center,
      style: buttonStyle,
      color: color,
      disabledColor: disabledColor,
      focusColor: focusColor,
      highlightColor: highlightColor,
      splashColor: splashColor,
      mouseCursor: mouseCursor,
      focusNode: focusNode,
      autofocus: autofocus,
      tooltip: tooltip,
    );
  }
}
