import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const ImageSample(title: 'ImageHomePage'),
    );
  }
}

class ImageSample extends StatelessWidget {
  const ImageSample({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(title)),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                'assets/images/리사안경.jpg',
                width: 200,
                height: 100,
                fit: BoxFit.fill,
              ),
            ],
          ),
        ));
  }
}
