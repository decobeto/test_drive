import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'N0BANK'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  int _currentPage = 0;
  var _pages = [
    Text("Cartão de Crédito"),
    Text("Pagar contas"),
    Text("Sua conta"),
    Text("Configurações")
  ];

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(child: _pages.elementAt(_currentPage),),
            Text(
              'Números de emprestimos:',
              style: TextStyle(color: Colors.pink, fontWeight: FontWeight.bold, decoration: TextDecoration.underline, fontSize: 30, height: 5 ),
            ),
            Text(
              'Financie sua geladeira aqui',
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, backgroundColor: Colors.deepPurple )
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.clear),
                Text('Cancele seus emprestimos')
              ],
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Adicionar',
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.credit_card),
          title: Text("Cartão de Crédito"),
          backgroundColor: Colors.deepPurple
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.map),
          title: Text("Pagar contas"),
          backgroundColor: Colors.deepPurple
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          title: Text("Sua conta"),
          backgroundColor: Colors.deepPurple
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings_applications),
          title: Text("Configurações"),
          backgroundColor: Colors.deepPurple
        ),
      ],
      currentIndex: _currentPage,
      onTap: (int toIndex){
        setState(() {
          _currentPage = toIndex;
        });
      },
      ),
    );
  }
}
