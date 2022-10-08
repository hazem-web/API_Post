import 'package:apiwithcubit/cubit/quote_cubit.dart';
import 'package:apiwithcubit/view/screens/postscreen.dart';
import 'package:apiwithcubit/view/screens/quotescreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => QuoteCubit(),)
      ],

      child: MyApp()));
}

class MyApp extends StatelessWidget {


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home:PostScreen()
    );
  }
}
