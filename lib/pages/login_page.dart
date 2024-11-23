import 'package:catalog_app/pages/home_page.dart';
import 'package:catalog_app/utils/app_routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget{
  const LoginPage({super.key});
  @override
  Widget build(BuildContext context){
    return Material(
      child: SingleChildScrollView(
        child: Column(
          children: [
           Container(margin: EdgeInsets.all(20),
           child:  Image.asset("assets/images/login_image.png", ),),
           SizedBox(height: 20,),
           Text("Welcome", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
           SizedBox(height: 20,),
          Padding(padding: EdgeInsets.all(20),
        
          child: Column(
            children: [
               TextFormField(
            decoration: InputDecoration(
              hintText: "enter user name",
              label: Text("Name")
            ),
           ),
           TextFormField(
            obscureText: true,
            decoration: InputDecoration(
            
              hintText: "enter password",
              label: Text("Password")
            ),
           ),
           SizedBox(height: 20,),
           SizedBox(
            width: MediaQuery.of(context).size.width *0.7,
            child: ElevatedButton(onPressed:()=>{
              // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>
              //    HomePage()
              // )),
              Navigator.of(context).pushNamed(AppRoutes.Home)
           } ,
           style: ElevatedButton.styleFrom(
            // minimumSize: Size(200, 200),
            backgroundColor: Colors.amber,
           )
          //  style: TextButton.styleFrom()
        //          style: const ButtonStyle(
        // elevation: WidgetStatePropertyAll(2),
        // foregroundColor: WidgetStatePropertyAll(Colors.amberAccent)
        // ,
        
        // backgroundColor: WidgetStatePropertyAll(Colors.black)
        //          )
           , child: Text("Submit"),),
           ),
            ],
          ),)
          ],
          
        ),
      )
    );
  }

}