import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_signup/DbHelper.dart';
import 'package:login_signup/dashboard_page.dart';
import 'package:login_signup/sign_up.dart';
import 'package:login_signup/user_info.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  TextEditingController mobileController=TextEditingController();
  TextEditingController passwordController=TextEditingController();

 final formkey=GlobalKey<FormState>();

  Future login()async{
   //fetch data from text controller
    // check if the password is 12345
    //if true then move to next page
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
     key: formkey,
        child:SingleChildScrollView(
          child: Container(
            //alignment: Alignment.center,
            height: MediaQuery.of(context).size.height/1,
          //  width: 300,

            child: Padding(
              padding: const EdgeInsets.all(40),
              child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormField(
                    controller: mobileController,
                  decoration: InputDecoration(icon: Icon(Icons.person),
                      hintText: "please Input Mobile No"

                  ),
                  validator: (value){
                    if(value==null||value.isEmpty){
                     return "Input Mobile No";
                    }

                  },
                 ),
                  TextFormField(
                    controller: passwordController,
                    decoration: InputDecoration(hintText: "Please Input Password",icon: Icon(Icons.password_outlined)),
                    validator: (value){
                    if(value==null||value.isEmpty){
                      return "Input Password";
                    }
                    return null;
                  },

                  ),
                  SizedBox(height: 16,),

                  ElevatedButton(onPressed: (){
                    if(formkey.currentState!.validate()){
                      String mobile = mobileController.text;
                      String password = passwordController.text;
                      UserInfo? userInfo = DbHelper.userInfo;
                      if(userInfo == null){
                        print("Please create a account first");
                      }else{
                        if(mobile == userInfo.mobile && password == userInfo.password){
                          Navigator.push(context, MaterialPageRoute(
                                   builder: (context)=>DashboardPage()));
                        }else{
                          print("Mobile or password is wrong");
                        }
                      }

                      //
                    }
                  },
                      child:Text("Login",
                    style: TextStyle(
                        fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),)),
                SizedBox(height: 16),

               ElevatedButton(onPressed: (){
                 //Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUp()));
               }, child:Text("SignUp",style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold,fontSize: 20),)),


              ],

              ),
            ),
          ),
        ),
      ),
    );
  }
}
