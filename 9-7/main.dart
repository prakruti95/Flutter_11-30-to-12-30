import 'package:firebase_core/firebase_core.dart';
import 'package:firebasecrud/view.dart';
import 'package:flutter/material.dart';

void main()async
{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatefulWidget
{
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>
{
  @override
  Widget build(BuildContext context)
  {

    final Future<FirebaseApp> _initailization = Firebase.initializeApp();
    return FutureBuilder
      (
          future: _initailization,
          builder: (context,snapshot)
          {
              if(snapshot.hasError)
              {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Something Went Wrong")));
              }
              if(snapshot.connectionState == ConnectionState.done)
              {
                      return MaterialApp
                        (
                          home: ViewScreen(),
                        );
              }

              return const Center(child: CircularProgressIndicator());

          }
      );

  }
}

