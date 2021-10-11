import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Future login()async{

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(

        child:SingleChildScrollView(
          child: Container(
            alignment: Alignment.center,
            height: MediaQuery.of(context).size.height/1,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [TextFormField(
                decoration: InputDecoration(
                    hintText: "please Input Mobile No"

                ),
                validator: (value){
                  if(value==null||value.isEmpty),
                },
              ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Please Input Password"

                  ),
                ),
              SizedBox(height: 16),
              Text("SignIn",
                  style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.blue),
              ),
                SizedBox(height: 16,),
                Container(
                  child: Text("SignUp",style: TextStyle(color: Colors.blue,fontWeight:FontWeight.bold,fontSize: 20),),
                ),

            ],

            ),
          ),
        ),
      ),
    );
  }
}
