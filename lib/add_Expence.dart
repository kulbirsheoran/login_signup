import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_signup/DbHelper.dart';
import 'package:login_signup/ExpenseInfo.dart';

class AddExpence extends StatefulWidget {
  const AddExpence({Key? key}) : super(key: key);

  @override
  _AddExpenceState createState() => _AddExpenceState();
}

class _AddExpenceState extends State<AddExpence> {
  TextEditingController ExpenceController=TextEditingController();
  TextEditingController AddAmountController=TextEditingController();
  TextEditingController AddExpenceController=TextEditingController();
  List<ExpenseInfo> expenseList = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
 body: Form(
   child: Container(
     child: Padding(
       padding: const EdgeInsets.all(24),
       child: Column(
         children: [
           TextFormField(
             controller: ExpenceController,
             decoration: InputDecoration(
               hintText: "Input Expense Name"
             ),
           ),
         ],
       ),
     ),
   ),
 ),
    );
  }

  void addExpense(){
    String name="";
    double amount = double.parse("");
    String date = DateTime.now().toString();

    ExpenseInfo expenseInfo = ExpenseInfo(name: name,amount: amount,date: date);
    DbHelper.userInfoList.add(expenseInfo);

  }

  void fetchExpenses(){
    expenseList = DbHelper.userInfoList;
    setState(() {

    });
  }
}
