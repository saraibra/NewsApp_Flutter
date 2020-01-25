import 'package:flutter_app3/Models/author.dart';
import 'package:flutter_app3/Utilities/api_utilities.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class AuthorsApi {
  String allAuthorsApi = base_api + all_authors_api;
  Future<List<Author>> fetchAllAuthors() async {
    List<Author> authors = List<Author>();
    var response = await http.get(allAuthorsApi);
    if (response.statusCode == 200) {
      var jsonData = jsonDecode(response.body);
      var data = jsonData["data"];
      for (var item in data) {
        Author author = Author(item['id'].toString(), item['name'].toString(),
            item['email'].toString(), item['avatar'].toString());
        authors.add(author);
      }
    }
    return authors;
  }
}
