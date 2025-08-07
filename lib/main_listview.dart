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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> items = List<String>.generate(50, (i) =>'Item ${i+1}');
    return Scaffold(
      appBar: AppBar(
        title: Text('Chapter6'),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (BuildContext context, int indx){
        return ListTile(
          title: Text(items[indx]),
          subtitle: Text(items[indx]),
          onTap: (){
            print(items[indx]);
          },
        );
      })
    );
  }
}


