import 'package:apiwithcubit/cubit/quote_cubit.dart';

import 'package:apiwithcubit/models/postmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PostScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuoteCubit, QuoteState>(
      builder: (context, state) {
        var cubit = context.read<QuoteCubit>();
        var body = TextEditingController();
        var title = TextEditingController();
        var id = TextEditingController();
        var userid = TextEditingController();
        return Scaffold(
            appBar: AppBar(
              title: Text("Post Screen"),
            ),
            body: Padding(
              padding: const EdgeInsets.all(20),
              child: Center(
                child: Column(
                  children: [
                    TextFormField(
                      controller: body,
                      decoration: InputDecoration(
                          label: Text("Body")
                      ),
                    ),
                    SizedBox(height: 50,),
                    TextFormField(
                      controller: title,
                      decoration: InputDecoration(
                          label: Text("Title")
                      ),
                    ),
                    TextFormField(
                      controller: userid,
                      decoration: InputDecoration(
                          label: Text("id")
                      ),
                    ),
                    ElevatedButton(onPressed: () {
                      var post = Postmodel(firstName: title.text,lastName: body.text);

                      cubit.postquote(post);

                    }, child: Icon(Icons.save))
                  ],
                ),
              ),
            )

        );
      },
    );
  }
}
