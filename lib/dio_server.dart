import 'package:dio/dio.dart';

const _API_PREFIX = "https://jsonplaceholder.typicode.com/posts";

//dio 사용예제가 있음. 
class Server {
  Future<void> getReq() async {
    Response response;
    Dio dio = new Dio();
    response = await dio.get("$_API_PREFIX/1"); // /1을 통해 1번 포스트만 get방식으로 가져옴. 
    print(response.data.toString());
  }

   Future<void> postReq() async {
    Response response;
    Dio dio = new Dio();
    response = await dio.post(_API_PREFIX, data: {"id":12, "name":"vidtorianoch!!!"});
    print(response.data.toString());
  }



   Future<void> getReqWzQuery() async {
    Response response;
    Dio dio = new Dio();
//https://jsonplaceholder.typicode.com/posts?userId=1&id=2식으로 의미함. 
    response = await dio.get(_API_PREFIX, queryParameters: {
      "userId" :1, //Map형식으로 전달. ?userId=1&id=2 로 나오게 됨. 
      "id":2,
    });
    print(response.data.toString());
  }
}

//여기서 인스턴스화 해서 void에 접근. 
Server server = Server();

