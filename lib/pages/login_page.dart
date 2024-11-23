import 'package:catalog_app/pages/home_page.dart';
import 'package:catalog_app/utils/app_routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget{
const LoginPage({super.key});
@override
 State<LoginPage> createState()=>_LoginPageState();
}
class _LoginPageState extends State<LoginPage>{
  
 String name="";
 bool buttonChanged=false;
 TextEditingController nameController=TextEditingController(text: "");
TextEditingController passwordController=TextEditingController(text: "");
  @override
  Widget build(BuildContext context){
    return Material(
      child: SingleChildScrollView(
        child: Column(
          children: [
           Container(margin: EdgeInsets.all(20),
           child:  Image.asset("assets/images/login_image.png", fit: BoxFit.cover,),),
           SizedBox(height: 20,),
           Text("Welcome", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
           SizedBox(height: 20,),
          Padding(padding: EdgeInsets.all(20),
        
          child: Column(
            children: [
               TextFormField(
                controller:nameController ,
                // onChanged: (value) {
                //   setState(() {
                //     name=value.toString();
                //   });
                // },
            decoration: InputDecoration(
              hintText: "enter user name",
              label: Text("Name $name")
            ),
           ),
           TextFormField(
            controller: passwordController,
            obscureText: true,
            decoration:const InputDecoration(
            
              hintText: "enter password",
              label: Text("Password")
            ),
           ),
           const SizedBox(height: 20,),
           Material(

            color: Colors.deepPurple,
                  // shape: buttonChanged?BoxShape.circle:BoxShape.rectangle,
             
                  borderRadius:buttonChanged?BorderRadius.all(Radius.circular(50)): BorderRadius.all(Radius.circular(8)),

   
             child: InkWell(
              // splashColor: Colors.red,
              onTap: ()async {
                setState(() {
                  buttonChanged=true;
                });
                print(nameController.text);
                await Future.delayed(Duration(seconds: 1));
                // Navigator.pushNamed(context, AppRoutes.Home).then((res){
                //   setState(() {
                //     buttonChanged=false;
                //   });

                // });
              },
               child: AnimatedContainer(
                duration: Duration(seconds: 1, ),
                // padding: EdgeInsets.all(20),
                width:buttonChanged?50: 150,
                height: 50,
                alignment: Alignment.center,
                child:buttonChanged?Icon(Icons.done,color: Colors.blueAccent, ): Text("login", style: TextStyle(fontSize: 18),),
                // decoration: BoxDecoration(
                //   color: Colors.amber,
                //   // shape: buttonChanged?BoxShape.circle:BoxShape.rectangle,
             
                //   borderRadius:buttonChanged?BorderRadius.all(Radius.circular(50)): BorderRadius.all(Radius.circular(8))
                // ),
               ),
             ),
           )
          //  SizedBox(
          //   width: MediaQuery.of(context).size.width *0.7,
          //   child: ElevatedButton(onPressed:()=>{
          //     // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>
          //     //    HomePage()
          //     // )),
          //     Navigator.of(context).pushNamed(AppRoutes.Home)
          //  } ,
          //  style: ElevatedButton.styleFrom(
          //   // minimumSize: Size(200, 200),
          //   backgroundColor: Colors.amber,
          //  )
          //  style: TextButton.styleFrom()
        //          style: const ButtonStyle(
        // elevation: WidgetStatePropertyAll(2),
        // foregroundColor: WidgetStatePropertyAll(Colors.amberAccent)
        // ,
        
        // backgroundColor: WidgetStatePropertyAll(Colors.black)
        //          )
          //  , child: Text("Submit"),),
          //  ),
            ],
          ),)
          ],
          
        ),
      )
    );
  }

}