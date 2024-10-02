import '../../src.dart';

Future<dynamic> deleteDialog(
    {required VoidCallback press,
    required BuildContext context,
    required dynamic item,
    required String alert}) {
  // final locale = AppLocalizations.of(context)!;
  return showDialog(
    context: context,
    builder: (context) => SimpleDialog(
      title: RichText(
        text: TextSpan(children: [
          TextSpan(
              // text: "${locale.deleteNote1} ",
              style: Theme.of(context).textTheme.bodyMedium),
          TextSpan(
              text: item.name, style: Theme.of(context).textTheme.titleMedium),
          TextSpan(text: alert, style: Theme.of(context).textTheme.bodyMedium),
        ]),
      ),
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            RoundedButtonWidget(
                bg: Colors.grey,
                press: () => Navigator.pop(context),
                title: "locale.no"),
            width(10),
            RoundedButtonWidget(press: press, title: " locale.yes"),
            width(20),
          ],
        )
      ],
    ),
  );
}
