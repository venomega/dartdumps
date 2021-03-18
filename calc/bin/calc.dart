import 'dart:core';
import 'dart:io';

void banner() => print("Calculadora sovietica\nby GPS\n\n");
void banner_op() => print("Menu:\n1 - Suma\n2 - Resta\n3 - Mult\n4 - Div");
void result(var num) => print ("The Result is ${num}");


void usage() => print("Usage:\n -h This help\n\nrun without arguments for menu mode\n" +
"run with 3 arguments, like 3 + 3, for a quick calc\n");


List args() {
  print("Ingrese el primer numero");
  var num1 = double.parse(stdin.readLineSync());
  print("Ingrese el segundo numero");
  var num2 = double.parse(stdin.readLineSync());
  return [num1, num2];
}

void solve(var num1, var num2, var op){
  if ((op == 1) |  (op == '+')){
    result(num1 + num2);
  }
  if ((op == 2) | (op == '-')){
    result(num1 - num2);
  }
  if ((op == 3) | (op == '*')){
    result(num1 * num2);
  }
  if ((op == 4) | (op == '/')){
    result(num1 / num2);
  }
}

cli_mode(arguments){
  var num1, num2, op;
    num1 = int.parse(arguments[0]);
    num2 = int.parse(arguments[2]);
    op = arguments[1];
    solve(num1, num2, op);
    exit(0);
}

menu_mode(){
  banner();
  var nums = args();
  banner_op();
  print ("Ingrese un numero:");
  int op = int.parse(stdin.readLineSync());
  solve(nums[0], nums[1], op);
}

void main(List<String> arguments){
  if (arguments.length == 3){
    cli_mode(arguments);
  }else{
    if (arguments.length > 0){
      usage();
      exit(1);
    }
  }
  menu_mode();
}
































/*
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
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
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
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
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
*/