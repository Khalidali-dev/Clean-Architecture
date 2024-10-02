import '../../src.dart';

class InkwellButtonWidget extends StatelessWidget {
  const InkwellButtonWidget(
      {super.key,
      this.borderRadius,
      required this.press,
      this.hoverColor,
      required this.child,
      this.onHover});
  final BorderRadius? borderRadius;
  final Function() press;
  final Color? hoverColor;
  final Widget child;
  final Function(dynamic)? onHover;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onHover: onHover,
      onTap: press,
      hoverColor: hoverColor ?? AppColors.primaryColor,
      borderRadius: borderRadius ?? BorderRadius.circular(10),
      child: child,
    );
  }
}
