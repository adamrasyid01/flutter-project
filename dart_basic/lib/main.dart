import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counterGenap = 0;
  int _counterGanjil = 1;
  int _counterPrima = 2;
  int _counternrp = 1;
  int _nrpsekarang = 3;

  // List<int> tampungNrp = [];
  // List<int> printAngka = [];

  void _incrementCounter() {
    var nrp = [3, 1, 2, 2, 5, 0, 0, 0, 1, 8];
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.

      
      _counterPrima++;
      if (_counterPrima > 100) {
        _counterPrima = 2;
      }else{
        for (int i = 5; i < 100; i++) {
          if (_counterPrima == 3 || _counterPrima == 5 || _counterPrima == 7) {
            _counterPrima;
          } else if (_counterPrima % 2 == 0 ||
              _counterPrima % 3 == 0 ||
              _counterPrima % 5 == 0 ||
              _counterPrima % 7 == 0) {
            _counterPrima++;
          }
        }
      }


      if (_counterGenap > 20) {
        _counterGenap = 0;
        _counterGanjil = 1;
      } else {
        _counterGenap += 2;
        _counterGanjil += 2;
      }

      if (_counternrp < nrp.length) {
        _nrpsekarang = nrp[_counternrp];
        _counternrp++;
      } else {
        _counternrp = 0;
      }

      // _tunjuknrp++;
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
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('2 D3 IT A'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'INI BILANGAN Genap',
            ),
            Text(
              '$_counterGenap',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const Text(
              'INI BILANGAN Ganjil',
            ),
            Text(
              '$_counterGanjil',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const Text(
              'INI BILANGAN Prima',
            ),
            Text(
              '$_counterPrima',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const Text(
              'INI Looping NRP',
            ),
            Text(
              '$_nrpsekarang',
              style: Theme.of(context).textTheme.headlineMedium,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.minimize),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
