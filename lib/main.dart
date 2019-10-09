import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import './models/transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
 
  // String titleInput; 
  // String amountInput;
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Apps'),
      ),
      body: Column(
        //   mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(width: double.infinity),
          Card(
            elevation: 5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[TextField(
                controller: titleController,
                decoration: InputDecoration(labelText: 'Title'),
                // onChanged: (val) {
                //   titleInput = val ;
               // } ,
              ), TextField(
                controller: amountController,
                decoration: InputDecoration(labelText: 'Amount'),
                // onChanged: (val) => amountInput = val,
              ), 
              FlatButton(child: Text('Add Transaction',
              ),
              textColor: Colors.purple,
              onPressed: (){
                print (titleController.text);
                print (amountController.text);
              },)
              ],
            ),
          ),
          
        ],
      ),
    );
  }
}
