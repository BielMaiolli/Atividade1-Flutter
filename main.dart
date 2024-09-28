import 'package:flutter/material.dart';

void main() {
  runApp(BankApp());
}

class BankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplicação Bancária',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BankHomePage(),
    );
  }
}

class BankHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aplicação Bancária'),
      ),
      body: ListView(
        children: <Widget>[
          Card(
            child: ListTile(
              leading: Icon(Icons.account_balance_wallet),
              title: Text('Conta Corrente'),
              subtitle: Text('Saldo disponível: R\$ 5.000,00'),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.credit_card),
              title: Text('Cartão de Crédito'),
              subtitle: Text('Limite disponível: R\$ 2.000,00'),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.savings),
              title: Text('Poupança'),
              subtitle: Text('Saldo: R\$ 10.000,00'),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.payments),
              title: Text('Investimentos'),
              subtitle: Text('Rendimento: R\$ 1.500,00'),
            ),
          ),
        ],
      ),
    );
  }
}
