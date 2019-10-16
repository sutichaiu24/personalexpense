
import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final amountController = TextEditingController();
  final titleController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var titleController;
    return 
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
          );
    
    
    
  }
}