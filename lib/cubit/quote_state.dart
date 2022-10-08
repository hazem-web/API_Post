part of 'quote_cubit.dart';

@immutable
abstract class QuoteState {}

class QuoteInitial extends QuoteState {}

class Getdatastate extends QuoteState{}

class Postdata extends QuoteState{}