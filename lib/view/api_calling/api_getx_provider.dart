import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:getx_demo/view/api_calling/model.dart';

class GetApi {
  //
  Future<CustomApiModel<ApiModel>> fetchData() async {
    String url =
        "https://api.themoviedb.org/3/movie/popular?api_key=2a61185ef6a27f400fd92820ad9e8537&page=500";
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      return CustomApiModel<ApiModel>(
        data: ApiModel.fromJson(jsonDecode(response.body)),
        statusCode: 200,
      );
    } else {
      return CustomApiModel<ApiModel>(
        msg: "Faild to fetch data from the internet",
        statusCode: 400,
      );
    }
  }
}
