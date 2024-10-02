import '../../src.dart';

ThemeData lightTheme = ThemeData.light().copyWith(
    appBarTheme: const AppBarTheme(
        titleTextStyle: TextStyle(
            color: Colors.black, fontWeight: FontWeight.bold, fontSize: 15),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarBrightness: Brightness.light,
            statusBarColor: AppColors.redColor)),
    textButtonTheme: const TextButtonThemeData(
        style: ButtonStyle(
            textStyle: WidgetStatePropertyAll(
                TextStyle(fontWeight: FontWeight.bold)))),
    snackBarTheme: SnackBarThemeData(
      backgroundColor: Colors.black, // Custom background color
      contentTextStyle:
          const TextStyle(color: Colors.white, fontSize: 16), // Text style
      actionTextColor:
          AppColors.redColor, // Color of action buttons like "Dismiss"
      behavior: SnackBarBehavior.floating, // Floating SnackBar behavior
      width: 400,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
          side: const BorderSide(color: Colors.purple, width: 2)),
    ),
    popupMenuTheme: PopupMenuThemeData(
      shape: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide.none,
      ),
      textStyle: const TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
      color: Colors.grey.shade100,
    ),
    cardTheme: CardTheme(
      color: Colors.white,
      shadowColor: Colors.blueGrey,
      surfaceTintColor: Colors.blueGrey,
      elevation: 1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(100),
        side: BorderSide.none,
      ),
    ),
    datePickerTheme: DatePickerThemeData(
      backgroundColor: Colors.white,
      // dayOverlayColor: WidgetStateProperty.all(Colors.green),
      rangeSelectionBackgroundColor: Colors.purple,
      todayForegroundColor: WidgetStateProperty.resolveWith<Color?>(
        (states) {
          if (states.contains(WidgetState.selected)) {
            return Colors.white;
          }
          return Colors.deepOrange;
        },
      ),
      dayForegroundColor: WidgetStateProperty.resolveWith<Color?>(
        (states) {
          if (states.contains(WidgetState.selected)) {
            return Colors.white;
          }
          return Colors.black;
        },
      ),
    ),
    drawerTheme: const DrawerThemeData(backgroundColor: Colors.white),
    colorScheme: const ColorScheme.light(
        primary: AppColors.redColor,
        secondary: Colors.amber,
        onPrimary: AppColors.redColor,
        outline: Colors.green,
        onPrimaryContainer: Colors.pink,
        primaryContainer: Colors.white),
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: Colors.black,
    ),
    scaffoldBackgroundColor: Colors.white,
    progressIndicatorTheme: ProgressIndicatorThemeData(
        linearTrackColor: Colors.grey.shade200, color: Colors.purple),
    primaryColor: AppColors.redColor,
    textTheme: const TextTheme(
      titleLarge: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      titleMedium: TextStyle(color: Colors.black),
      titleSmall: TextStyle(color: Colors.black),
      bodyLarge: TextStyle(color: Colors.grey),
      bodyMedium: TextStyle(color: Colors.grey),
      bodySmall: TextStyle(color: Colors.black),
    ));
