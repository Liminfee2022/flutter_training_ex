import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_training_ex/routes.dart';
import 'package:flutter_training_ex/widgets/ButtonText.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Colors.blue,
        appBarTheme: const AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle.light,
        ),
      ),
      home: const Retro(),
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}

class Retro extends StatelessWidget {
  const Retro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select Exercises'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ButtonText(title: 'C4', onPress: () {
              Navigator.pushNamed(context, RouteGenerator.c4HomePage);
            },),
            const SizedBox(height: 10,),
            ButtonText(title: 'C5', onPress: () {
              Navigator.pushNamed(context, RouteGenerator.c5S1);
            },),
            const SizedBox(height: 10,),
            ButtonText(title: 'C6', onPress: () {},),
            const SizedBox(height: 10,),
            ButtonText(title: 'C7', onPress: () {},),
            const SizedBox(height: 10,),
            ButtonText(title: 'C11', onPress: () {},),
          ],
        ),
      ),
    );
  }
}
