import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:remotecontrolapp/pages/config_page.dart';
import 'package:remotecontrolapp/pages/home_page.dart';

void main() {
  runApp(RemoteControl());
}

class RemoteControl extends StatelessWidget {
  const RemoteControl({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const MaterialColor color = const MaterialColor(
      0xFF007252,
      const <int, Color>{
        50: const Color(0xFF007252),
        100: const Color(0xFF007252),
        200: const Color(0xFF007252),
        300: const Color(0xFF007252),
        400: const Color(0xFF007252),
        500: const Color(0xFF007252),
        600: const Color(0xFF007252),
        700: const Color(0xFF007252),
        800: const Color(0xFF007252),
        900: const Color(0xFF007252),
      },
    );
    final ThemeData theme = ThemeData();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(
          primary: color,
          secondary: Colors.white,
        ),
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => const HomePage(),
        "/config": (context) => ConfigPage(),
      },
    );
  }
}
