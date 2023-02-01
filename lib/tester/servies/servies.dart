import 'package:http/http.dart' as http;
import 'package:pak_programmer/tester/model/model.dart';
class apiResponse{

 static Future<List<ProductModel>?> fetchData() async{
    final response=await http.get(Uri.parse("https://makeup-api.herokuapp.com/api/v1/products.json?brand=marienatie"));


    if(response.statusCode==200){
      var jsonResponse=response.body;
     return productModelFromJson(jsonResponse);
    }
   
  }
}