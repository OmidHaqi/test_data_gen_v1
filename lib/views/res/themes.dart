import 'package:flutter/material.dart';

ThemeData lightTheme() {
  return ThemeData(
    useMaterial3: true,
    fontFamily: 'Ubuntu',
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: Color(
        0xFF98d6b5,
      ),
    ),
    switchTheme: SwitchThemeData(
      thumbColor: const MaterialStatePropertyAll(
        Color(0xFF5fc092),
      ),
      trackOutlineColor: const MaterialStatePropertyAll(
        Color(0xFF1b211d),
      ),
      thumbIcon: MaterialStateProperty.all(
        const Icon(
          Icons.mode_night,
          color: Color(0xFF1b211d),
        ),
      ),
    ),
    iconTheme: const IconThemeData(
      color: Color(0xFF1b211d),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Color(0xFF1b211d),
        ),
      ),
      labelStyle: TextStyle(
        color: Color(0xFF1b211d),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Color(0xFF5fc092),
          width: 2,
        ),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              9,
            ),
          ),
        ),
        textStyle: const MaterialStatePropertyAll(
          TextStyle(
            color: Color(0xFF1b211d),
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const MaterialStatePropertyAll(
          Color(0xFF5fc092),
        ),
      ),
    ),
    cardTheme: CardTheme(
      color: const Color(0xFF98d6b5),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          20,
        ),
        //set border radius more than 50% of height and width to make circle
      ),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Color(0xFF5fc092),
      
    ),
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xFF5fc092),
      onPrimary: Color(0xFF1b211d),
      error: Color(0xFFF44336),
      onError: Color(0xFFFFFFFF),
      background: Color(0xFFbbe4cd),
      onBackground: Color(0xFF1b211d),
      secondary: Color(0xFF5fc092),
      onSecondary: Color(0xFF1b211d),
      surface: Color(0xFFbbe4cd),
      onSurface: Color(0xFF1b211d),
    ),
  );
}

ThemeData darkTheme() {
  return ThemeData(
    useMaterial3: true,
    fontFamily: 'Ubuntu',
    switchTheme: SwitchThemeData(
      thumbColor: const MaterialStatePropertyAll(
        Color(0xFF44A47E),
      ),
      trackOutlineColor: const MaterialStatePropertyAll(
        Color(0xFF5fc092),
      ),
      thumbIcon: MaterialStateProperty.all(
        const Icon(
          Icons.sunny,
          color: Color.fromARGB(
            255,
            255,
            255,
            255,
          ),
        ),
      ),
    ),
    iconTheme: const IconThemeData(
      color: Color(0xFF5fc092),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Color(0xFF5fc092),
        ),
      ),
      labelStyle: TextStyle(
        color: Color(0xFF5fc092),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Color(0xFF3f3f3f),
          width: 2,
        ),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        textStyle: const MaterialStatePropertyAll(
          TextStyle(
            color: Color(0xFF1b211d),
            fontWeight: FontWeight.bold,
          ),
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              9,
            ),
          ),
        ),
        backgroundColor: const MaterialStatePropertyAll(
          Color(0xFF5FC092),
        ),
      ),
    ),
    cardTheme: CardTheme(
      elevation: 0,
      color: const Color(0xFF303632),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          20,
        ),
        //set border radius more than 50% of height and width to make circle
      ),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Color(0xFF5FC092),
    ),
    colorScheme: const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xFF1b211d),
      onPrimary: Color(0xFFFFFFFF),
      error: Colors.red,
      onError: Color(0xFFFFFFFF),
      background: Color(0xFF1b211d),
      onBackground: Color(0xFFFFFFFF),
      secondary: Color(0xFF5FC092),
      onSecondary: Color(0xFFFFFFFF),
      surface: Color(0xFF1b211d),
      onSurface: Color(0xFFFFFFFF),
    ),
  );
}
