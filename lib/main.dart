import 'package:envio/constants.dart';
import 'package:envio/models/products.dart';
import 'package:envio/screens/detail/detail_screen.dart';
import 'package:envio/screens/home/home_screen.dart';
import 'package:envio/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<Products>(
          create: (context) => Products(),
        )
      ],
      child: MaterialApp(
        title: 'Green Shop',
        debugShowCheckedModeBanner: false,
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale('fa'), // English, no country code
        ],
        theme: themeDatas(),
        home: const SplashScreen(),
        routes: {
          HomeScreen.routeName: (ctx) => const HomeScreen(),
          DetailScreen.routeName: (ctx) => const DetailScreen(),
        },
      ),
    );
  }

  ThemeData themeDatas() {
    return ThemeData(
      pageTransitionsTheme: const PageTransitionsTheme(
        builders: {TargetPlatform.android: CupertinoPageTransitionsBuilder()},
      ),
      fontFamily: 'shabnam',
      textTheme: const TextTheme(
        bodyText1: TextStyle(color: kTextColor, fontSize: 20),
        bodyText2: TextStyle(color: kTextColor, fontSize: 20),
      ),
      scaffoldBackgroundColor: kDarkerBackgroundColor,
      appBarTheme: const AppBarTheme(
          backgroundColor: kDarkerBackgroundColor,
          elevation: 0,
          systemOverlayStyle: SystemUiOverlayStyle.light),
    );
  }
}
