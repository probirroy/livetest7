import 'package:alert_dialog/alert_dialog.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CounterApp(),
    );
  }
}

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int value = 0;
  void increment() {
    if (value ==4) {
      alert(
        context,
        title: Text('Counter Alert:',
            style: TextStyle(fontSize: 25,color: Colors.black, fontWeight: FontWeight.bold)),
        content: Text('Counter Value is 5!',
            style: TextStyle(fontSize: 23,color: Colors.black, fontWeight: FontWeight.bold)),
        textOK: Text('OK',
            style: TextStyle(fontSize: 30,color: Colors.black, fontWeight: FontWeight.bold)),
      );
    } else if (value ==9) {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => SecoundScreen(),
      ));
    }
    setState(() {
      value++;
    });
  }

  void decrement() {
    if (value ==6) {
      alert(
        context,
        title: Text('Counter Alert'),
        content: Text('Counter value is 5!'),
        textOK: Text('Ok'),
      );
    } else if (value ==11) {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => SecoundScreen(),
      ));
    }
    setState(() {
      value--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( centerTitle: true,
        title: Text('Counter App'),
      titleTextStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Counter Value', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
            ),
            Text(
              value.toString(),
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
            ),
            Row(children: [
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ElevatedButton(
                    onPressed: increment,
                    child: Text('+'),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ElevatedButton(
                    onPressed: decrement,
                    child: Text('-'),
                  ),
                ),
              ),
            ])
          ],
        ),
      ),
    );
  }
}

class SecoundScreen extends StatelessWidget {
  const SecoundScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,
          title: Text('Second Screen'),
          titleTextStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
      body: Center(
          child: Text(textAlign: TextAlign.center,
            'Congratulations! You Reached 10!',
            style: TextStyle(color: Colors.black,fontSize: 28, fontWeight: FontWeight.bold,),
          )),
    );
  }
}
