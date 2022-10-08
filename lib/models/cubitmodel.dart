
class QuoteModel {
  QuoteModel({
   required this.id,
    required this.quote,
    required this.author,
  });

  int id;
  String quote;
  String author;

  factory QuoteModel.fromJson(Map<String, dynamic> json) => QuoteModel(
    id: json["id"],
    quote: json["quote"],
    author: json["author"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "quote": quote,
    "author": author,
  };
}
