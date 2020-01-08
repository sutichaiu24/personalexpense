import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addTx;
  final amountController = TextEditingController();
  final titleController = TextEditingController();
  NewTransaction(this.addTx);
  void submitData() {
    final enterTitle = titleController.text;
    final enterAmount = double.parse(amountController.text);
    if (enterTitle.isEmpty||enterAmount <0){
      return;
    }
    addTx(enterTitle, enterAmount);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          TextField(
            controller: titleController,
            decoration: InputDecoration(labelText: 'Title'),
            onSubmitted: (_) => submitData,
            // onChanged: (val) {
            //   titleInput = val ;
            // } ,
          ),
          TextField(
            controller: amountController,
            decoration: InputDecoration(labelText: 'Amount'),
            keyboardType: TextInputType.number,

            // onChanged: (val) => amountInput = val,
          ),
          FlatButton(
            child: Text(
              'Add Transaction',
            ),
            textColor: Colors.purple,
            onPressed: submitData,
          )
        ],
      ),
    );
  }
}
