import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:traveling/screens/discoverPage.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.white,
      systemNavigationBarIconBrightness: Brightness.dark));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          // This is the theme of your application.
          //
          // TRY THIS: Try running your application with "flutter run". You'll see
          // the application has a purple toolbar. Then, without quitting the app,
          // try changing the seedColor in the colorScheme below to Colors.green
          // and then invoke "hot reload" (save your changes or press the "hot
          // reload" button in a Flutter-supported IDE, or press "r" if you used
          // the command line to start the app).
          //
          // Notice that the counter didn't reset back to zero; the application
          // state is not lost during the reload. To reset the state, use hot
          // restart instead.
          //
          // This works for code too, not just values: Most code changes can be
          // tested with just a hot reload.
          colorScheme: const ColorScheme.light(
              brightness: Brightness.light,
              primary: Color(0xff78CADE),
              background: Color(0xffFFFFFF),
              onBackground: Color(0xff000000)),
          useMaterial3: true,
          textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
              .copyWith(
                bodyLarge: const TextStyle(
                  fontSize: 16,
                  fontWeight:FontWeight.bold
                ), 
                bodyMedium: const TextStyle(
                  fontSize: 14
                ),
                bodySmall: const TextStyle(
                  fontSize: 12
                ),
                titleSmall: const TextStyle(
                  fontSize: 20,
                  color: Color(0xff78CADE)
                ),
                titleLarge: const TextStyle(
                  color: Colors.white,
                  fontSize: 26,
                  fontWeight: FontWeight.bold
                ),displaySmall: TextStyle(
                  fontSize: 24,
                  color: Theme.of(context).colorScheme.onBackground,
                  fontWeight: FontWeight.bold
                )
              )),
      home:  Discoverpage(),
    );
  }
}

