import 'dart:convert';

import 'package:chat_app/modals/image_model.dart';
import 'package:http/http.dart' as http;

class ImageRepository{
  Future<List<JsonPlaceHolder>> getNetworkImages() async{
    var endpointUrl = Uri.parse("https://jsonplaceholder.typicode.com/photos");
    final response = await http.get(endpointUrl);
    if(response.statusCode == 200){
      //print(response.body);
      final List<dynamic> decodeList = jsonDecode(response.body) as List;
      final List<JsonPlaceHolder> _imageList = decodeList.map((listItem){
        return JsonPlaceHolder.fromJson(listItem);
      }).toList();
      print(_imageList[0].url);
      return _imageList;
    }else{
      print("sorry");
      throw Exception("AP not successful");
    }
  }

}