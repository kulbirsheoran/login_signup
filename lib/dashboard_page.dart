import 'package:flutter/material.dart';
import 'package:login_signup/add_Expence.dart';
import 'package:login_signup/sign_up.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 2,
      child: Scaffold(
      appBar: AppBar(
        bottom: TabBar(
          tabs: [
            Text("View"),
            Text('Add Expenses')
          ],
        ),

      ),
        body: TabBarView(
          children: [
       AddExpence(),
            SignUp(),
          ],
        ),
      ),
    );
  }
}
