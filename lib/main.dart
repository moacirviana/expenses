import 'models/transaction.dart';
import 'package:flutter/material.dart';

main() => runApp( ExpensesApp());

class ExpensesApp extends StatelessWidget {
  //const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  //const MyHomePage({super.key});
   final _transaction = [
    Transaction(id:'t1',
            title:'Tênnis de corrida',
          value: 310.76,
          date: DateTime.now()
   ),
    Transaction(id:'t2',
            title:'Conta de Luz',
          value: 120.51,
          date: DateTime.now()
   )
   ];

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Despesas pessoais')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
              width: double.infinity,
              child: const Card(
                color: Colors.blue,
                elevation: 5,
                child: Text('Gráfico'),
              ),
            ),
        Column(
          children: _transaction.map((tr){
            return Card(
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 10
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 2
                      )
                    ),
                    padding: const EdgeInsets.all(10),
                    child: Text(tr.value.toString()),
                  ),
                  Column(
                    children: [
                      Text(tr.title),
                      Text(tr.date.toString())
                    ],
                  )
                ],
              )
            
            );
          }).toList()
         )
      ]),
    );

  }
}