import 'package:catalog_app/pages/home_page.dart';
import 'package:catalog_app/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:catalog_app/utils/app_routes.dart';
void main(){
  // WidgetsFlutterBinding.ensureInitialized()
  runApp(const App());
}

class App extends StatelessWidget{
const App({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
    
      // home: LoginPage(),
      initialRoute: "/",
      // debugShowCheckedModeBanner: false,
      routes:  {
        "/":(context)=>const LoginPage(),
      AppRoutes.Home:(context)=>const HomePage(),
        AppRoutes.Login:(context)=>const LoginPage()

      },
      theme: ThemeData(primaryTextTheme: GoogleFonts.latoTextTheme(),
      primaryColor: Colors.blueAccent,
      fontFamily: GoogleFonts.lato().fontFamily),
    //  home:  Scaffold(
    //   appBar: AppBar(),
    //   body: Text("hello"),
    //   ),
    );
  }
}