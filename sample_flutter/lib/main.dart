import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: simpleAppbar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 100,
            height: 80,
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
            decoration: BoxDecoration(
              color: Colors.blueAccent,
              border: Border.all(
                color: Colors.blueGrey,
              )
            ),
            child: const Text(
              "안녕!",
              maxLines: 1,
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ),
          imageCard(),
        ],
      ),
      bottomNavigationBar: const BottomAppBar(
        child: SizedBox(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.star),
              Icon(Icons.shop),
              Icon(Icons.cabin),
              Icon(Icons.abc)
            ],
          ),
        ),
      ),
    ));
  }

  Widget imageCard() {
    return Center(
      child: Container(
        width: 500,
        height: 500,
        color: Colors.blue,
        child: Image.asset('dummy.jpg'),
      ),
    );
  }
}

PreferredSizeWidget simpleAppbar() {
  return AppBar(
    backgroundColor: Colors.blue,
    title: const Text(
      'Simple Flutter',
      style: TextStyle(
          color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
    ),
  );
}
