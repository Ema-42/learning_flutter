void main() {
  print('inicio del main');
  httpGet('https:google.com').then((value) {
    print(value);
  }).catchError((err){
    print('Error: ${err}');
  });
  print('fin del main');
}

Future<String> httpGet(String url) {
  return Future.delayed(const Duration(seconds: 2), () {
    throw 'Error en la peticion http';
    //return 'resupesta de la http';
    
  });
}
