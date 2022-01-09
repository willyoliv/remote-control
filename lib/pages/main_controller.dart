import 'package:remotecontrolapp/repository/repository.dart';

class MainController {
  late String ip;
  late String porta;
  late String url;

  setValues(String porta, String ip, String url) {
    this.ip = ip;
    this.porta = porta;
    this.url = url;
    print(ip);
    Repository.fetch(url);
  }
}
