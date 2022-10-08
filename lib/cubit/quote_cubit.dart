import 'dart:convert';
import 'package:apiwithcubit/models/cubitmodel.dart';
import 'package:apiwithcubit/models/postmodel.dart';
import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
import 'package:http/http.dart' as http;

part 'quote_state.dart';


class QuoteCubit extends Cubit<QuoteState> {
  QuoteCubit() : super(QuoteInitial()){
  }

  List<QuoteModel> quotes = [];

  getquote()async{
    var response = await Dio().get('https://dummyjson.com/quotes');
    quotes=List<QuoteModel>.from(response.data['quotes'].map((e)=>QuoteModel.fromJson(e)));
    emit(Getdatastate());
  }
  getquotehttp()async{
    var response = await http.get(Uri.parse('https://dummyjson.com/quotes'));
    var rquest = jsonDecode(response.body);
    print(rquest);
    quotes=List<QuoteModel>.from(rquest['quotes'].map((e)=>QuoteModel.fromJson(e)));

    emit(Getdatastate());
  }
  
  postquote(Postmodel post)async{
    var response = await Dio().post('https://dummyjson.com/users/add',data:post.toJson());
    print(response.data);
    emit(Postdata());
  }
}
