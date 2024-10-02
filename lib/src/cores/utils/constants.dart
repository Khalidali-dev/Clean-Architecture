import '../../src.dart';

// Scaffold Messenger
final GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey =
    GlobalKey<ScaffoldMessengerState>();

// DI
GetIt getIt = GetIt.instance;

// Languages
List<Map<String, String>> languages = [
  {'name': 'Arabic', 'code': 'ar'},
  {'name': 'Chinese', 'code': 'zh'},
  {'name': 'English', 'code': 'en'},
  {'name': 'French', 'code': 'fr'},
  {'name': 'German', 'code': 'de'},
  {'name': 'Spanish', 'code': 'es'},
  {'name': 'Urdu', 'code': 'ur'},
];

// Theme Manager
// Color themeColorManager(BuildContext context) =>
//     context.read<ItemsBloc>().state.themeMode == ThemeMode.dark
//         ? Colors.white
//         : Colors.black;

// bool printerManager(BuildContext context) =>
//     context.read<ItemsBloc>().state.isPrint ? true : false;

// // Language Code Manager
// bool languageManager(BuildContext context) =>
//     context.read<ItemsBloc>().state.languageCode == "ar" ||
//     context.read<ItemsBloc>().state.languageCode == "ur";

// HEIGHTS
height(double height) => SizedBox(
      height: height,
    );

// WIDTH
width(double width) => SizedBox(
      width: width,
    );

// ROUTES
navigateAndRemoveUntils(
        {required String route, required BuildContext context}) =>
    Navigator.pushNamedAndRemoveUntil(context, route, (route) => false);

navigateName({required String route, required BuildContext context}) =>
    Navigator.pushNamed(context, route);

navigate({required Widget screen, required BuildContext context}) =>
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => screen,
        ));

// PADDINGS

const paddingAll = EdgeInsets.all(30);
const padding10 = EdgeInsets.all(10);
const padding20 = EdgeInsets.all(20);

// FOCUS NODE

focusNode({
  required BuildContext context,
  required FocusNode currentFocus,
  nextFocus,
}) {
  currentFocus.unfocus();
  FocusScope.of(context).requestFocus(nextFocus);
}

// TOAST
void toast(String message) {
  final scaffoldMessenger = scaffoldMessengerKey.currentState;

  if (scaffoldMessenger != null) {
    final snackbar = SnackBar(
      duration: const Duration(seconds: 2),
      content: Text(
        message,
        style:
            Theme.of(scaffoldMessenger.context).snackBarTheme.contentTextStyle,
      ),
      backgroundColor:
          Theme.of(scaffoldMessenger.context).snackBarTheme.backgroundColor,
      behavior: Theme.of(scaffoldMessenger.context).snackBarTheme.behavior,
      shape: Theme.of(scaffoldMessenger.context).snackBarTheme.shape,
      width: Theme.of(scaffoldMessenger.context).snackBarTheme.width,
    );
    scaffoldMessenger.showSnackBar(snackbar);
  }
}
