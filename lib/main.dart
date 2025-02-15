import 'package:catalog_app/pages/cart_page.dart';
import 'package:catalog_app/pages/home_detail_page.dart';
import 'package:catalog_app/pages/home_page.dart';
import 'package:catalog_app/pages/login_page.dart';
import 'package:catalog_app/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:catalog_app/utils/app_routes.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized()
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: LoginPage(),
      initialRoute: AppRoutes.Home,
      // debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => const LoginPage(),
        AppRoutes.Home: (context) => const HomePage(),
        AppRoutes.Login: (context) => const LoginPage(),
        AppRoutes.Cart: (context) => CartPage()
        // AppRoutes.Details:(context)=>const HomeDetailPage()
      },
      themeMode: ThemeMode.light,
      theme: AppThemeData.lightTheme(context),
      darkTheme: AppThemeData.DarkTheme(context),
      //  home:  Scaffold(
      //   appBar: AppBar(),
      //   body: Text("hello"),
      //   ),
    );
  }
}
