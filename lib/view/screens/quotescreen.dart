import 'package:apiwithcubit/cubit/quote_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class QuoteScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuoteCubit,QuoteState>(
        builder:(context, state) {
          var cubit = context.read<QuoteCubit>();
          return Scaffold(
            appBar: AppBar(
              title: Text("Quote With Cubit"),
            ),
            body: ListView.separated(
              itemCount: cubit.quotes.length,
              itemBuilder: (context, index) {
                return Card(
                  color: Colors.grey[350],
                  elevation: 10,
                  child: ListTile(
                    title: Text(cubit.quotes[index].quote,style: TextStyle(fontSize: 20,color: Colors.teal,),),
                  ),
                );
              }, separatorBuilder: (BuildContext context, int index) { return Container(
              width: double.infinity,
              height: 2.5,
              color: Colors.black,
            ); },

            ),
          );
        }
    );
  }
}
