import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Startwithgenesis-CounterApp',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Startwithgenesis-CounterApp'),
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

  void _incrementCounter() {
    setState(() {
     
      _counter++;
    });

  }

    void _decrementCounter() {
    setState(() {

       if (_counter != 0)    
        _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        
        title: Text(widget.title),
      ),
      body: Center(
        
        child: Column(
         
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: SpeedDial(marginRight: 18,
          marginBottom: 20,
          animatedIcon: AnimatedIcons.menu_close,
          animatedIconTheme: IconThemeData(size: 22.0),
          
          curve: Curves.bounceIn,
          overlayColor: Colors.black,
          overlayOpacity: 0.5,
         
          
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 8.0,
          shape: CircleBorder(),
          children: [
            SpeedDialChild(
              child: Icon(Icons.add),
              backgroundColor: Colors.red,
              label: 'Add',
              labelStyle: TextStyle(fontSize: 18.0),
              onTap: () => print('Add')
              onPressed: _incrementCounter,
              
            ),
            SpeedDialChild(
              child: Icon(Icons.remove),
              backgroundColor: Colors.blue,
              label: 'Subtract',
              labelStyle: TextStyle(fontSize: 18.0),
              onTap: () => print('Subtract'),
              onPressed: _decrementCounter,

            ),
            
          ],
        ),
      
    );
  }
}
