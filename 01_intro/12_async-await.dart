void main() async {
  print('#####Inicio del main#####');
  try{
    final value = await httpGet('https:google.com');
    print(value);
  }
  catch (err){
    print('Error ${err}');
  }
  
  print('#####Fin del Prgrama#####');
}

Future<String> httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 2));
  throw 'Error en la peticion';
  //return 'tenemos un valor de la peticion';
}
