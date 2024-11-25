import 'package:catalog_app/pages/home_page.dart';
import 'package:catalog_app/utils/app_routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  bool buttonChanged = false;
//  TextEditingController nameController=TextEditingController(text: "");
// TextEditingController passwordController=TextEditingController(text: "");
  void moveToHome(context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        buttonChanged = true;
      });
      // print(nameController.text);
      await Future.delayed(Duration(seconds: 1));

      //   ScaffoldMessenger.of(context).showSnackBar(
      //     const SnackBar(content: Text('Processing Data')),
      //   );

      Navigator.pushNamed(context, AppRoutes.Home).then((res) {
        setState(() {
          buttonChanged = false;
        });
      });
    }
    ;
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        child: SingleChildScrollView(
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(20),
              child: Image.asset(
                "assets/images/login_image.png",
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Welcome",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  TextFormField(
                    // controller:nameController ,
                    validator: (value) {
                      bool isEmpty = value?.isEmpty ?? true;
                      if (isEmpty) {
                        return "Name cannot be empty";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        hintText: "enter user name", label: Text("Name")),
                  ),
                  TextFormField(
                    // controller: passwordController,
                    obscureText: true,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "password can't be empty";
                      }
                      if (value.length < 6) {
                        return "password length is too short";
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                        hintText: "enter password", label: Text("Password")),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Material(
                    color: Colors.deepPurple,
                    borderRadius: buttonChanged
                        ? BorderRadius.all(Radius.circular(50))
                        : BorderRadius.all(Radius.circular(8)),
                    child: InkWell(
                      onTap: () => moveToHome(context),
                      child: AnimatedContainer(
                        duration: Duration(
                          seconds: 1,
                        ),
                        // padding: EdgeInsets.all(20),
                        width: buttonChanged ? 50 : 150,
                        height: 50,
                        alignment: Alignment.center,
                        child: buttonChanged
                            ? Icon(
                                Icons.done,
                                color: Colors.blueAccent,
                              )
                            : Text(
                                "login",
                                style: TextStyle(fontSize: 18),
                              ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
