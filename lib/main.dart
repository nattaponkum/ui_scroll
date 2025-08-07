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
    List<String> items = List<String>.generate(100, (i) => 'Item ${i + 1}');
    return Scaffold(
      appBar: AppBar(title: Text('Chapter6'), backgroundColor: Colors.blue),
      body: GridView.builder(
        padding: EdgeInsets.all(8.0),
        
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisSpacing: 8.0,
          crossAxisSpacing: 8.0,
          crossAxisCount: 3,
          childAspectRatio: 0.9
        ),
        itemCount: items.length,
        itemBuilder: (BuildContext context, int idx) {
          return Container(
            color:  Colors.teal[100*(idx%6)],
            child: Center(child: Text(items[idx]))
            );
        },
      ),
    );
  }
}
